+++
title = "Install Codefresh CLI"
chapter = false
weight = 13
+++

The Codefresh command-line tool, [codefresh](https://codefresh-io.github.io/cli/), allows you to manage your Codefresh deployments from your terminal

## Installing the Codefresh CLI

Find your version by looking at the [latest releases](https://codefresh-io.github.io/cli/installation/download/).


At the terminal command prompt, enter the following commands:

```
cd /tmp
wget https://github.com/codefresh-io/cli/releases/download/v0.75.26/codefresh-v0.75.26-linux-x64.tar.gz
tar zxvf codefresh-v0.75.26-linux-x64.tar.gz
```

This download the CLI locally. To install and use it:

```
chmod +x ./codefresh
sudo mv ./codefresh /usr/local/bin/codefresh
```

This will install `codefresh` in your **Cloud9** environment. To test to make sure the command is installed properly, execute the command:

```
codefresh version 
```

You should see the `codefresh` version message.

## Connecting your CLI with your Codefresh account

![Step 4](/images/prerequisites/api-token.png)


