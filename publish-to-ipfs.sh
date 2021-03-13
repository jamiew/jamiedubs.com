#!/bin/bash
set -e

# be cron-friendly
cd "$(dirname "$0")"
export PATH="$PATH:$HOME/.rbenv/shims/"

# config
key="jamiedubs.com"

# TODO check that ipfs has this key
# TODO check that ipfs daemon is running

# pull latest code and skip jekyll rebuild if no updates
pull=$(git pull origin master)
match=$(echo $pull | grep 'up to date') # very naive
if [ -n "$match" ]; then
  echo "It's up to date"
  exit 0
else
  echo "Code was out of date, let's proceed..."
fi

# bundle exec jekyll build -q && echo "Site build complete" || echo "Site build error!"
jekyll build --incremental && echo "Site build complete" || echo "Site build error!"
cd _site
npx all-relative

hash=$(ipfs add --nocopy --fscache -Q -r .)
echo "hash=$hash"
name=$(ipfs name publish --key="$key" -t="72h" -Q "$hash")
echo "name=$name"

echo "Visit:"
echo "https://ipfs.jamiedubs.com/ipfs/$hash"
echo "https://ipfs.jamiedubs.com/ipns/$name"
