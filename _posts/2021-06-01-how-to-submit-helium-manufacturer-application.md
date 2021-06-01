---
title:How to submit a Helium manufacturer application
published: true
categories:
- helium
- howto
internal:
---

We use [[GitHub]] to manage the [[Helium Improvement Proposal]] process, which includes the hotspot manufacturer approval process (aka [HIP19](https://github.com/helium/HIP/issues/87), adopted Nov 2020)

This guide is meant to help folks who are new to GitHub submit a new manufacturer application, no command-line magic required. 

You will be using the github.com website to copy a `TEMPLATE` file, paste in your document, and submit a pull request to the [helium/hip](https://github.com/helium/hip) repository. 

From there a community review board will post comments or contact you with any further questions. New applications are also generally shared in the `#hip-19-third-party-manufacturers` channel on the [Helium Discord server](https://discord.gg/helium).

It is assumed you've already [created a GitHub account](https://github.com/join)

Go to https://github.com/helium/HIP/ and fork the TEMPLATE file
- If you're submitting a manufactuer application, use the file `0019-third-party-manufacturers/TEMPLATE.md`
- If you're submitting a normal HIP, just use the file `0000-template.md`

%%![[HIP0.png]]%%
![](https://dl.dropboxusercontent.com/s%2Fuisjw8kyk5f4wnn%2Fimage_fa2djhqjdr.png)

%%![[HIP 1.png]]%%
![](https://dl.dropboxusercontent.com/s%2Ftte1je72oqtkym5%2Fhip%25201.png)

Click the tiny "Edit" icon on the right to start editing your own copy

%%![[HIP  2.png]]%%
![](https://dl.dropboxusercontent.com/s%2Foq1rzggyg9rletf%2Fimage_ap00igtprw.png)

Edit and submit the document, which is formatted with [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) 

I recommend copying this template into a text editor (preferably with markdown support), editing there, then just pasting it back in here when you're ready.

Before you press save, remember to rename the file from `TEMPLATE.md` to `your-company-name.md`. It must have an .md suffix, no spaces, and all lowercase or it will be rejected.

%%![[HIP  3.png]]%%
![](https://dl.dropboxusercontent.com/s%2Fu9c0g19z71ds3nc%2Fhip%2520%25203.png)

Add a commit message too. It's good etiquette

%%![[HIP  4.png]]%%
![](https://dl.dropboxusercontent.com/s%2Fvf7z5texphrlzf9%2Fhip%2520%25204.png)

You are now about to submit your first GitHub pull request, congrats! Just press "create pull request"

%%![[HIP  7.png]]%%
![](https://dl.dropboxusercontent.com/s%2Fvjyx417zkg4jtsm%2Fhip%2520%25207.png)

GitHub also has some good tutorials: [Mastering Markdown](https://guides.github.com/features/mastering-markdown/),  [Creating A Pull Request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)


tags:
[[Helium]] [[HIPs]] [[Governance]]