# RORI v4.0.0

![](https://travis-ci.org/AmarOk1412/rori_core.svg?branch=master)

RORI is a modulable open-source chatterbot platform. The first version was written in 2011 (2.0 in September 2012). I rewrote it in Rust in 2017, and I'm currently migrating the whole communication to use [GNU Ring](https://ring.cx).

A complete RORI chain needs 4 things:

![processus](rsc/process.png?raw=true)

1. An **entry point** is a application which get commands from an user and send it to `rori_server`. For example, a chat where the entry point reads what users says.
2. An **endpoint** is a application which performs actions requested by RORI. For example, it can execute a shell command or write something in a chat.
3. A **module** is a script activated when a condition is fulfilled and send actions for endpoints to RORI.
4. The **rori_core** which get data from entries, call modules, and send data to endpoints.

# Why RORI?

I run a lot of chatterbots on multiple services (IRC, Discord, Websites, my computer). Some bots do the exact same thing but run on a different service. The idea is to avoid to rewrite the core of each chatterbot and use the same base. Now, I just have to write an interface to communicate with this core on each services.

This is some examples of what I will do with **RORI** (as soon as the migration is finished):
+ Ask **RORI** to launch music on the *best* device (on my computer, or stream on a discord server for example).
+ Ask **RORI** to be alarmed at 7:40.
+ Ask **RORI** to send messages to a friend.
+ Ask **RORI** to shutdown a device.
+ Send a picture to **RORI** and ask to store this pict in the *best* folder.
+ Ask **RORI** to send me a notification before a rendez-vous.

## Acronym

**RORI** is for **RORI O**n **RI**ng.
Where **RORI** is for **R**eally **O**bvious **R**eally **I**ntelligent.

## Architecture

This is a meta repository to group all related projects about **RORI**.

+ [`rori_core`](https://github.com/AmarOk1412/rori_core): the main repository for **RORI >4.0.0**. All documentation is in the [wiki](https://github.com/AmarOk1412/rori_core/wiki) of this project.
  + [`rori_modules`](https://github.com/AmarOk1412/rori_modules): all **RORI** modules.
+ clients for entry and endpoints
  + [`rori_discord_bot`](https://github.com/AmarOk1412/rori_discord_bot): a client for Discord servers
  + [`rori_linux_client`](https://github.com/AmarOk1412/rori_linux_client): a client for linux desktops
+ `rsc`: images, design, etc
+ Next repos: `rori_www` (for the website), **RORI** clients (linux, discord and IRC).

## Setup

```bash
git clone git@github.com:AmarOk1412/RORI.git
cd RORI
make init # will retrieve the latest version of all submodules and init
# If you want to run a server:
cd rori_core && make
python3 scripts/generate_modules.py
```

## Contribute

Please, feel free to contribute to this project in submitting patches, corrections, opening issues, etc.

If you don't know what you can do, you can look the [good-first-issue](https://github.com/AmarOk1412/rori_core/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) label, or still creates modules.

For more infos and ideas read [CONTRIBUTING.md](https://github.com/AmarOk1412/rori_core/blob/master/CONTRIBUTING.MD) (this file doesn't exists for now) and [CODE_OF_CONDUCT.md](https://github.com/AmarOk1412/rori_core/blob/master/CODE_OF_CONDUCT.md).

## RORI 3.0.0

**RORI** 3.0.0 is not maintained anymore, but this is related repositories:

+ [`rori_server`](https://github.com/AmarOk1412/rori_server/): Old main repository
  + [`rori_modules`](https://github.com/AmarOk1412/rori_modules/tree/v3.0.0): Old modules
+ [`rori_www`](https://github.com/AmarOk1412/rori_www/): old website
+ clients:
  + [`irc_entry_module`](https://github.com/AmarOk1412/irc_entry_module/tree/153979025191ea08a070f74d5b22569b7195d8a3) old irc client
  + [`rori_desktop_endpoint`](https://github.com/AmarOk1412/rori_desktop_endpoint/tree/d088e2d4a08947638a836fe38ad7f8f179b604e4) old desktop client
  + [`rori_discord_bot`](https://github.com/AmarOk1412/rori_discord_bot_old/tree/07537de20f56d3f00c13e531770ffb242075e42c) old discord client
