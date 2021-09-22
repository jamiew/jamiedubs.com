#!/bin/bash

# be cron-friendly
cd "$(dirname "$0")"
export PATH="$PATH:/usr/local/bin:$HOME/.rbenv/shims/"

# config
# TODO check that ipfs has this key
key="jamiedubs.com"

# TODO check that ipfs daemon is running
pid=$(pidof ipfs)
echo "ipfs pid => $pid"

if [ -z $pid ]; then
  echo "uh no, blank ipfs pid!"
  exit 1
fi

# pull latest code and skip jekyll rebuild if no updates
git stash >/dev/null 2>&1
pull=$(git pull 2>&1)
echo "pull => $pull"
git stash pop >/dev/null 2>&1
match=$(echo $pull | grep 'up to date') # very naive
hashfile=".ipfs-hash"

if [ -n "$match" ] && [ -e "$hashfile" ]; then
  hash="$(cat $hashfile)"
  echo "hash => $hash"
else
  echo "Code was out of date, let's proceed..."
  # bundle exec jekyll build -q && echo "Site build complete" || echo "Site build error!"
  bundle exec jekyll build --incremental && echo "Site build complete" || echo "Site build error!"

  cd _site
  npx all-relative
  cd ..

  hash=$(ipfs add --nocopy --fscache -Q -r _site)
  echo "fresh hash for $hashfile => $hash"
  echo $hash > $hashfile
fi

name=$(ipfs name publish --key="$key" -t="72h" -Q "$hash")
echo "name => $name"

echo "Visit:"
echo "https://ipfs.jamiedubs.com/ipfs/$hash"
echo "https://ipfs.jamiedubs.com/ipns/$name"
