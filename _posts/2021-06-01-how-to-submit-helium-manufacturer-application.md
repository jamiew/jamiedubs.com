---
title: How to submit a Helium hotspot manufacturer application
published: true
categories:
- helium
- howto
---

We use GitHub to manage the Helium Improvement Proposal process, which includes the hotspot manufacturer approval process (aka [HIP19](https://github.com/helium/HIP/issues/87), adopted Nov 2020)

This guide is meant to help folks who are new to GitHub submit a new manufacturer application, no command-line magic required. 

You will be using the github.com website to copy a `TEMPLATE` file, paste in your document, and submit a pull request to the [helium/hip](https://github.com/helium/hip) repository. 

From there a community review board will post comments or contact you with any further questions. New applications are also generally shared in the `#hip-19-third-party-manufacturers` channel on the [Helium Discord server](https://discord.gg/helium).

It is assumed you've already [created a GitHub account](https://github.com/join)

Go to [github.com/helium/HIP](https://github.com/helium/HIP/) and fork the relevant TEMPLATE file:
- If you're submitting a manufactuer application, use the file [0019-third-party-manufacturers/TEMPLATE.md](https://github.com/helium/HIP/blob/master/0019-third-party-manufacturers/TEMPLATE.md)
- If you're submitting a normal HIP, use the file [0000-template.md](https://github.com/helium/HIP/blob/master/0000-template.md)

[![](https://dl.dropboxusercontent.com/s%2Fuisjw8kyk5f4wnn%2Fimage_fa2djhqjdr.png)](https://dl.dropboxusercontent.com/s%2Fuisjw8kyk5f4wnn%2Fimage_fa2djhqjdr.png)

[![](https://dl.dropboxusercontent.com/s%2Ftte1je72oqtkym5%2Fhip%25201.png)](https://dl.dropboxusercontent.com/s%2Ftte1je72oqtkym5%2Fhip%25201.png)

Click the tiny "Edit" icon on the right to start editing your own copy

[![](https://dl.dropboxusercontent.com/s%2Foq1rzggyg9rletf%2Fimage_ap00igtprw.png)](https://dl.dropboxusercontent.com/s%2Foq1rzggyg9rletf%2Fimage_ap00igtprw.png)

Edit and submit the document, which is formatted with [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) 

I recommend copying this template into a text editor (preferably with markdown support), editing there, then just pasting it back in here when you're ready.

Before you press save, remember to rename the file from `TEMPLATE.md` to `your-company-name.md`. It must have an .md suffix, no spaces, and all lowercase or it will be rejected.

[![](https://dl.dropboxusercontent.com/s%2Fu9c0g19z71ds3nc%2Fhip%2520%25203.png)](https://dl.dropboxusercontent.com/s%2Fu9c0g19z71ds3nc%2Fhip%2520%25203.png)

Add a commit message too. It's good etiquette.

[![](https://dl.dropboxusercontent.com/s%2Fvf7z5texphrlzf9%2Fhip%2520%25204.png)](https://dl.dropboxusercontent.com/s%2Fvf7z5texphrlzf9%2Fhip%2520%25204.png)

You are now about to submit your first GitHub pull request, congrats! Just press "create pull request"

[![](https://dl.dropboxusercontent.com/s%2Fvjyx417zkg4jtsm%2Fhip%2520%25207.png)](https://dl.dropboxusercontent.com/s%2Fvjyx417zkg4jtsm%2Fhip%2520%25207.png)

GitHub also has some good tutorials: [Mastering Markdown](https://guides.github.com/features/mastering-markdown/),  [Creating A Pull Request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)


## How to get your "rendered view" link

It's also good etiquette to post a direct link to the `.md` file you just created, which makes it easier to read. You'll notice the "Rendered view: ..." links that are included in the description or first comment of a new PR, like this:

![](https://dl.dropboxusercontent.com/s%2Fh8u1h0hgeth13l0%2Fhip%2520-%2520show%2520rendered%2520view.png)

In order to always show the latest version, you need to link to the file inside your fork. First, go to your fork:

![](https://dl.dropboxusercontent.com/s%2Fxynjx05k125wqpr%2Fhip%2520-%2520find%2520your%2520branch.png)

Then navigate to your file, usually inside the `0019-third-party-manufacturers` directory:

![](https://dl.dropboxusercontent.com/s%2Fyos8qvghk63cgfb%2Fhip%2520%2520-%2520copy%2520link%2520to%2520file%2520in%2520branch.png)

Right click and copy, then paste into your GitHub PR. 

It should contain your username (e.g. `jamiew/HIP`) and should not contain a long commit hash like `f38fkajsdi3478fhkjasdflhjk3`... the latter means you're linking directly to the file at that specific commit, rather than the latest version.

Now when you make updates to your HIP, folks who click the rendered link will always see your latest version! 



tags:
Helium HIPs Governance
