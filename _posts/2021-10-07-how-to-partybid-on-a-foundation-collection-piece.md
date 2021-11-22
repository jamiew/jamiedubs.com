---
title: Hacking PartyBid to bid on unsupported Foundation Collections
published: true
categories:
- crypto
- nfts
- partydao
- foundation
---

![](https://dl.dropboxusercontent.com/s%2F477wgju23wfutre%2Fscreen%2520shot%25202021-10-07%2520at%252017-52-32%2520microcosm%252022%2520%2520foundation.jpg)

So you want to [partybid](https://partybid.app) on something in the cool new [Foundation Collections](https://foundation.app/collection), but the PartyBid frontend doesn't support it? And the auction is over in 12 hours you say?

You're in luck, we just hacked our way through this today, lofi permissionless blockchain-style! 

Using a contract deployed via Etherscan and a custom lil' web frontend, DefMicroParty pooled ~6 ETH and is now the proud owner of Jen Stark's beautiful [Microcosm #22](https://foundation.app/@JenStark_Vault/cosmos/22)

I wrote up this HOWTO for [Sirsu](https://twitter.com/sirsuhayb/) but thought it might be helpful for everyone else trying to do this <3

You'll need to do a few things, and some technical savvy is required:

1. Dig up the NFT contract address, token ID and auction ID
2. Deploy a PartyBid contract instance using Etherscan
3. ~~Deploy your own version of the [custom web frontend](https://github.com/shahruz/defparty)~~ – **UPDATE:** thanks to SteveK, the partybid.app frontend now supports custom contracts

If you're into this or have any questions, feel free to join us on the new [Definitely Crypto discord server](https://discord.gg/rJu3G58aRh) – "a place for friends" (and hackers, designers, writers, musicians, businesspeoples, activists, lawyers, vandals and anyone else who likes making stuff and having fun)

## Deploy a PartyBid contract instance

1. Choose an artwork, fund your wallet and rally your posse

For Sirsu this is [https://foundation.app/@yatreda/taitu/10](https://foundation.app/@yatreda/taitu/10) (awesome piece)

2. Find the piece you want on Foundation and copy its custom contract URL:

![](https://dl.dropboxusercontent.com/s%2Fjng0fw6cr8vvgy7%2Fscreen%2520shot%25202021-10-07%2520at%252017-11-55%2520gudit%2520kingdoms%2520of%2520ethiopia%2520foundation.png)

in this case:
`0x814A056F1607C7F43285a1a1de43755Ed3b26eE7`

3. Look up the tokenID -- this is generally in the link from Foundation too

%%!Screen Shot 2021-10-07 at 17-17-00 Kingdoms of Ethiopia (TAITU) Token Tracker Etherscan.png
%%
![](https://dl.dropboxusercontent.com/s%2Fjbx6sdpy0hawjl8%2Fscreen%2520shot%25202021-10-07%2520at%252017-17-00%2520kingdoms%2520of%2520ethiopia%2520%2528taitu%2529%2520token%2520tracker%2520etherscan.png)

Ours is `10`

4. Look up the Foundation auction ID for that specific token

I visit the Foundation `Market` contract on Etherscan to look this up:
0xcDA72070E455bb31C7690a170224Ce43623d0B6f

[https://etherscan.io/address/0xcda72070e455bb31c7690a170224ce43623d0b6f#readProxyContract](https://etherscan.io/address/0xcda72070e455bb31c7690a170224ce43623d0b6f#readProxyContract
)

Use the `getReserveAuctionIdFor` function and put in your NFT contract from step 2 and your token ID from step 3

%%!Screen Shot 2021-10-07 at 17-22-30 Foundation Market 0xcDA72070E455bb31C7690a170224Ce43623d0B6f.png
%%
![](https://dl.dropboxusercontent.com/s%2F6tc8di638mt1cgd%2Fscreen%2520shot%25202021-10-07%2520at%252017-22-30%2520foundation%2520market%25200xcda72070e455bb31c7690a170224ce43623d0b6f.png)

Ours is `97237`

Now you have your arguments for the `startParty` contract call:

```
_marketWrapper (address):  0x96e5b0519983f2f984324b926e6d28C3A4Eb92A1
_nftContract (address) 0x814A056F1607C7F43285a1a1de43755Ed3b26eE7
_tokenId (uint256) 10
_auctionId (uint256) 97237
_splitRecipient (address) 0x0000000000000000000000000000000000000000
_splitBasisPoints (uint256) 0
_name (string): WhateverYouWant
_symbol (string): WHATEVERUWANT
```

Time to deploy a PartyBid instance!

Visit the PartyBidFactory contract on Etherscan:
[https://etherscan.io/address/0xAba3506DDF718278632B245ad0d86BB81070BA47#code](https://etherscan.io/address/0xAba3506DDF718278632B245ad0d86BB81070BA47#code
)

Fill in the values you dug up:

%%!Screen Shot 2021-10-07 at 17-24-49 PartyBidFactory 0xAba3506DDF718278632B245ad0d86BB81070BA47.png
%%
![](https://dl.dropboxusercontent.com/s%2F3s4ka0ogr8fd9va%2Fscreen%2520shot%25202021-10-07%2520at%252017-24-49%2520partybidfactory%25200xaba3506ddf718278632b245ad0d86bb81070ba47.png)

Write contact and hold onto your butts!

## Deploy the lofi custom frontend

**UPDATE:** thanks to SteveK, the partybid.app frontend now supports custom contracts and this is no longer necessary.

Once deployed, you will want to contribute funds. Unfortunately the partybid.app UI does not currently support this. You'll need to deploy a copy of a custom web3 frontend that [Shahruz](https://twitter.com/shahruz) wrote in like 30 minutes:

[https://github.com/shahruz/defparty](https://github.com/shahruz/defparty)

The fastest ways to deploy this are setting it up on [Vercel](https://www.vercel.com) or [Netlify](https://netlify.com). This is more involved and a little bit beyond the scope of this guide, but you can check those sites for getting-started guides. Both are relatively easy if you've built a web app before, but grab a friend if that's new territory for you.

The frontend we used to win Microcosmos #22 is here as an example: [https://defparty.netlify.app/](https://defparty.netlify.app/)

![](https://dl.dropboxusercontent.com/s%2Foa1dwgq58z46lrl%2Fscreen%2520shot%25202021-10-07%2520at%252017-47-27%2520mozilla%2520firefox.png)

You will need to edit this file to put in your contract address, your own Infura key, plus links to your own relevant things so folks don't think they're on a _completely_ sketchy website:

[https://github.com/shahruz/defparty/blob/main/src/pages/index.tsx](https://github.com/shahruz/defparty/blob/main/src/pages/index.tsx)

We're planning to clean this up and move some things to ENV vars, which would graduate this from dirtstyle to double dirtstyle

Big thank you to [Steve Klebenoff](https://twitter.com/steveklbnf), [Shahruz](https://twitter.com/shahruz), [Matt Lehrer](https://twitter.com/mattlehrer/), everyone in Definitely Crypto, everyone else who participated in this PartyBid, and especially [Jen Stark](https://twitter.com/jen_stark) for the beautiful work! 
