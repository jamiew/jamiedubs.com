#!/bin/bash
# ls ~/Dropbox/Obsidian/Posts/

function copy () {
  dir="/Users/jamie/Dropbox/obsidian/Posts"
  from="$dir/$1"
  to=$2

  echo "$from => $to"
  # remove %%comments%%
  # remove [[ and ]] from [[wikilinks]] -- TODO add support for [[Custom titles|wikilinks]]
  cat "$from" | sed '/^%%.*%%$/d' | sed 's/\[\[//g' | sed 's/\]\]//g' > "$to"
  # TODO strip the brackets from [[Wikilinks]]
  # | sed '/\[\[/d' | sed '/\]\]/d'> "$2"
}


copy "2021-05-30 - A brief history of PartyDAO.md" ./2021-05-29-a-brief-history-of-partydao.md
copy "2021-06-01 - How to submit a HIP or Helium manufacturer application.md" ./2021-06-01-how-to-submit-helium-manufacturer-application.md
copy "2021-06-02 - PartyDAO is what startups will look like in the future.md" ./2021-06-02-partydao-what-startups-will-look-like-in-future.md
copy "2021-07-13 - Breaking down the Songcamp Elektra crowdfund.md" ./2021-07-13-breaking-down-songcamp-elektra-crowdfund.md
copy "2021-10-07 - How to PartyBid on a Foundation Collection (or other custom contract).md" ./2021-10-07-how-to-partybid-on-a-foundation-collection-piece.md
copy "2021-10-27 - Go pitch yourself.md" ./2021-10-27-go-pitch-yourself.md
copy "2021-11-22 - How to be an HNT price oracle.md" ./2021-11-22-how-to-be-an-hnt-price-oracle.md

if [ "$1" == "-a" ]; then
  echo "Committing and pushing"
  git commit -a -m "Update post"
  git push
fi

