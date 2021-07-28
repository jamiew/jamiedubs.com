---
title: How to be a Helium price oracle
published: false
tags: helium
---

**The Helium Network Wants YOU To Submit HNT Prices Regularly**
**(It's Easier Than You Think)**

## Background

Look, the first rule of being an oracle is that you don't talk about being an oracle. 

The second rule of being an oracle is to submit early and often. Daily at a bare minimum, hourly would be great. A majority of oracles must vote within a rolling 24 hour period for a price to be set; otherwise we end up with stale periods like this nonsense:

![](https://dl.dropboxusercontent.com/s%2Fazdzrx0qvc88p4g%2Fscreen%2520shot%25202021-07-27%2520at%252022-40-45%2520oracles%2520%25C2%25B7%2520dashboard%2520%25C2%25B7%2520metabase%25201.png)

As you can see in this amazing chart, when the number of oracles who actually voted fell below a majority (the dashed threshold line), there were no price updates in the chart above:

![](https://dl.dropboxusercontent.com/s%2F0gy09qtmjz5e2wx%2Fscreen%2520shot%25202021-07-27%2520at%252022-42-24%252001-46%2520%25C2%25B7%2520oracles%2520%25C2%25B7%2520dashboard%2520%25C2%25B7%2520metabase.png)

Read on more about oracles [on docs.helium.com](https://docs.helium.com/blockchain/oracles/) and then check out all the sick charts of oracles (allegedly) submitting prices on [DeWi ETL](https://etl.dewi.org/dashboard/12-oracles)

OK I'm glad you've made it this far.

## Setup

You'll need to be comfortable with the commandline, and ideally have a dedicated server you can setup to automatically submit prices on a regular basis. A [Raspberry Pi](https://www.raspberrypi.org/) on your home internet connection would be way more than enough.

1. Download and install the commandline [helium-wallet](https://github.com/helium/helium-wallet-rs)
2. Create a fresh mainnet wallet

```
helium-wallet create basic
Password: [unique long top secret password]
Confirm: [unique long top secret password]
```
3. Backup that new `wallet.key` keyfile somewhere super duper safe
4. Send the wallet address to your top secret handler. I don't know who this is, don't ask.

## Submit prices

Helium has made this very easy. Thank you Louis. You don't even need to look up the HNT price – you can use `helium-wallet` to automatically fetch and submit the latest price from Coingecko, Bilaxy or Binance:

```
helium-wallet oracle report --block auto --price coingecko --commit
```

This assumes the `wallet.key` is in the same directory. Use `-f ~/path/to/oracle-wallet.key` otherwise.

Lastly, setup a script to automatically submit prices on a regular basis. You can use the `HELIUM_WALLET_PASSWORD` environment variable to automatically enter your wallet password; keep this safe. 

Here is a basic shell script:

```
#!/bin/bash
export HELIUM_WALLET_PASSWORD="[unique long top secret password]"
keyfile="$HOME/path/to/oracle-wallet.key"
source="coingecko" # bilaxy, binance

# Try three times before giving up
# Sometimes Coingecko is tired
n=0
until [ "$n" -ge 2 ]; do
  echo "attempt $n ..."
  $HOME/bin/helium-wallet -f "$keyfile" oracle report --block auto --price "$source" --commit 2>&1 && break
  n=$((n+1))
  sleep 5
done
```

Then throw it in your crontab (`crontab -e`):

```
# Submit HNT prices hourly
@hourly   /home/pi/bin/helium-oracle-submit | grep -v "timed out" >/dev/null
```

## You did it

Thank you for your service

