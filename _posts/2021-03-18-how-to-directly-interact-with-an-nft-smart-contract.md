---
title: How to directly interact with an NFT smart contract using Etherscan
started: 2021-03-18
categories:
- crypto
- ethereum
- nfts
---

Want to better understand what's happening under the hood with an Ethereum NFTs? Here's how to read your artwork's metadata files and asset URLs directly from the blockchain using Etherscan.

First, find your NFT's contract address (`0xff..33`) and tokenID (e.g. `420`). 

On OpenSea this is pretty easy:

[![](https://dl.dropboxusercontent.com/s%2Fneozs9shb5dd61j%2FScreen%2520Shot%25202021-03-18%2520at%252011-36-21%2520Sentience%252093%2520-%2520Art%2520Blocks%2520Playground%2520%2520OpenSea%2520.png)](https://opensea.io/assets/0xa7d8d9ef8d8ce8992df33d8b8cf4aebabd5bd270/20000093)

On Foundation they link directly to the Etherscan page for the associated contract and tokenID:

[![](https://dl.dropboxusercontent.com/s%2Fs2306gwob5kqdm2%2FScreen%2520Shot%25202021-03-18%2520at%252012-03-41%2520FVCKMALLER%2520%2520CRYSTALIZE%2520%2520Foundation%2520.png)](https://foundation.app/justinmaller/fvckmaller-crystalize-9150)

![](https://dl.dropboxusercontent.com/s%2F90h1no9y2egs7nm%2FScreen%2520Shot%25202021-03-18%2520at%252012-01-44%2520FND%2520NFT%2520%2528FNDNFT%2529%2520Token%2520Tracker%2520%2520Etherscan%2520.png)

Next, punch your contract address into [Etherscan](https://etherscan.io) and click "Contract"

![](https://dl.dropboxusercontent.com/s%2Fcyo7cep1kfvs9dr%2FScreen%2520Shot%25202021-03-18%2520at%252011-38-36%2520GenArt721Core%2520%25200xa7d8d9ef8d8ce8992df33d8b8cf4aebabd5bd270%2520.png)

Peruse the code, nod thoughtfully to yourself, then switch to the "Read contract" tab. These are all of the methods this smart contract exposes publicly:

![](https://dl.dropboxusercontent.com/s%2Fkjk99qvtey26k4b%2FScreen%2520Shot%25202021-03-18%2520at%252011-45-45%2520GenArt721Core%2520%25200xa7d8d9ef8d8ce8992df33d8b8cf4aebabd5bd270%2520.png)

For NFT metadata we want the `tokenURI` method. Punch in your tokenID and press "Query":

![](https://dl.dropboxusercontent.com/s%2Fu86hs93ar5dquih%2FScreen%2520Shot%25202021-03-18%2520at%252011-50-19%2520GenArt721Core%2520%25200xa7d8d9ef8d8ce8992df33d8b8cf4aebabd5bd270%2520.png%2528990293801%2529.png.png)

Congrats, you just queried data out of the Ethereum blockchain! With Ethereum you have to pay to write data (that's the gas fee), but read operations are free.

That URL links to the the ERC-721 metadata for the NFT, which is usually stored as JSON:

[![](https://dl.dropboxusercontent.com/s%2F0th781a7a032aio%2FScreen%2520Shot%25202021-03-18%2520at%252011-51-43%2520Mozilla%2520Firefox%2520.png)](https://api.artblocks.io/token/20000093)

This particular NFT's metadata is hosted at https://api.artblocks.io/token/20000093 and the `image` is https://api.artblocks.io/image/20000093. Usually these are links to a distributed storage system like IPFS. For more about see my post [[IPFS and distributed storage for cryptoartists]]

Artblocks' metadata includes a lot of fields, like copyright, aspect ratio, and more. Most NFT metadata is pretty thin and just includes `image`. Confusingly that is usually a link to a video, not an image, but here we are.

[![](https://dl.dropboxusercontent.com/s%2Fqktg6qi1hb2rela%2FScreen%2520Shot%25202021-03-18%2520at%252011-52-35%2520Mozilla%2520Firefox%2520.png)](https://ipfs.io/ipfs/Qma6WWxiXJXstMqWGetESjd8vhVu8YnDefsA2HfVNxn3VD/metadata.json)

Using this Etherscan web interface, you are directly interacting with the Ethereum blockchain. This is exactly the same thing that all the NFT marketplace sites you're browsing are doing–they're all pulling data from the same public blockchain, like a giant shared database. When people get hype about web3, this is why. You can login to another site and all your data just comes with you. No more vendor lock.

Note that this won't work out-of-the-box with every contract. Developers have published and verified the source code of their contract for Etherscan's contract interface to work with it.

Some other important methods are `symbol`, `tokenSupply`, and `transfer`/`safeTransfer`, which are part of the ERC-20 and [ERC-721](https://eips.ethereum.org/EIPS/eip-721) standards. 

A dumb fun fact you can share at parties: `tokenURI` is actually an optional field, meaning images and assets aren't built-in to the idea of an NFT at all. Enjoy!
