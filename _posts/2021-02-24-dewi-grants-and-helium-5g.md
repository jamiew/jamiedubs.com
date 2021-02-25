---
title: DeWi grants and Helium 5G
date: 2021-02-24
categories:
- helium
- dewi
---

In May I joined the board of DeWi, a non-profit associated with the [Helium](https://helum.com) p2p wireless network. So far our work has been primarily focused on establishing community governance of the network, via new [monthly community calls](https://dewi.org/community-call) and by establishing the [Helium Improvement Proposals (HIP)](https://github.com/helium/HIP) process.

This week we had two big announcements: a multi-million dollar community devgrants program, and the announcement of our first grant, which will add 5G and LTE support to the Helium protocol.

On Monday we wrote about the new [DeWi grants program](https://dewialliance.medium.com/launching-the-dewi-grant-program-9410310129bf), to which we're committing 1M HNT. That's approximately $3.5M depending on the day's [token price](https://www.coingecko.com/en/coins/helium). Practically speaking we are funding projects that improve Helium, but the big-picture goal is to get more developers involved, particularly in blockchain and protocol development. Currently almost all of Helium's core developers are employees of Helium Inc. – which is normal and totally expected – but the next milestone in our [progressive decentralization](https://) journey will be adding at least one independent developer to the core team.

During our monthly community call yesterday we announced that our first grant is going to [FreedomFi](https://freedomfi.com/), a company building open-source, commodity-hardware LTE and 5G small cell systems. Their approach is similar to how Helium Inc has approached building out the initial Helium LoRaWAN network: ~$400 hotspots that everyday people can plug in, put by their window, and earn money for providing coverage. FreedomFi's new [HIP27 proposal](https://github.com/helium/HIP/issues/134) outlines the technical and economic changes needed to add 5G and LTE support to the Helium protocol and allow us to start deploying a community-owned 5G network around the world.

![Screenshot from the community call yesterday](https://dl.dropboxusercontent.com/s%2Fzmiybc412zasa1c%2FScreen%2520Shot%25202021-02-24%2520at%252012-36-22%2520Zoom%2520Meeting%2520.png%25281684731797%2529.png.png)

While on the surface Helium appears to be an IoT-specific network, it is actually a protocol for building wireless networks of all shapes and sizes: 3G, LTE, 5G, wifi, LoRaWAN, you name it. FreedomFi's team is stocked with open-source and telecom-industry veterans, and the FCC's authorization of [Citizens Broadband Radio Service (CBRS)] in Jan 2020 opened up this space to new players like us. I believe what we are building here will become a major community-owned telco that competes with AT&T, Verizon and other massive companies around the world.

The Helium project is especially exciting for me as a former owner of [La Fonera](https://en.wikipedia.org/wiki/Fon_(company)#La_Fonera_WiFi_router) routers and a participant in community wireless projects like [NYCMesh](https://www.nycmesh.net/) and [The Things Network](https://www.thethingsnetwork.org/) . One of the best things about those projects is that they are open-source, staffed by volunteers and generally funded by donations. Unfortunately I think that reliance on altruism is also their greatest weakness. Helium's blockchain provides a clear financial incentive for everyday people to build out the network. The [crypto reward system](https://helium.com/hnt) is clever, fair and motivating, and solves for the "chicken and egg" problem of wireless infrastructure deployment. The proof is in the pudding: more than 20k hotspots have been deployed in less than a year and there's a multi-month waiting list for new hotspots, which in turn is attracting [new hardware manufacturers](https://github.com/helium/HIP/issues/87).

![Photo of a La Fonera wifi hotspot](https://dltv.files.wordpress.com/2007/04/fon3.jpg?w=178&h=202)

We're looking to fund more software, data analysis, and educational projects, both small and large. I'm personally interested in:

* tools for connecting Helium to other projects, like wrapped-HNT and Rosetta integration
* end-user usability improvements like web wallets and a better Ledger app
* more data analysis of the network work, building on top of the the public [DeWi ETL](https://etl.dewi.org) instance that we launched a few months ago

We are open to other ideas too. [Submit your proposals here](https://github.com/dewi-alliance/grants) or hit me up in the #dewi in the [Helium Discord](https://discord.gg) .







----- more about Helium -- different blog post --------

Helium is an open-source, permissionless blockchain-based wireless network for IoT devices like sensors and GPS trackers. Helium uses a little-known wireless standard called [LoRaWAN](https://en.wikipedia.org/wiki/LoRa#LoRaWAN) , which is like a low-bandwidth, long-range flavor of the wifi networks we're all used to. A small hotspot can provide coverage for miles, and the sensors can be the size of a fingernail and run for years off battery power. Currently these kinds of sensors generally need to use cellular connections (3G/LTE) which is expensive and draws a lot of power.

LoRa is relatively popular in Europe but not as much in the rest of the world. Telcos like AT&T and Verizon are slow to deploy new standards, and it costs them a fortune. This is the opportunity for Helium. These telcos can't compete with a network that exists [rent-free](https://multicoin.capital/2019/06/12/helium-series-c/) and has no direct employees.

As a former
