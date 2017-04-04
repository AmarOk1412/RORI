# RORI

RORI is a modulable open-source chatterbot under [WTFPL](https://en.wikipedia.org/wiki/WTFPL#Version_2). The first version was written in 2011 (2.0 in September 2012) and this is a repository for the third (and last) version (re-written in Rust with a new architecture).

A complete RORI chain needs 4 things:

![processus](rsc/process.png?raw=true)

1. An **entry point** is a application which get commands from an user and send it to `rori_server`. For example, a chat where the entry point reads what users says.
2. An **endpoint** is a application which performs actions requested by RORI. For example, it can execute a shell command or write something in a chat.
3. A **module** is a script activated when a condition is fulfilled and send actions for endpoints to RORI.
4. The **rori_server** which get data from entries, call modules, and send data to endpoints.

# Why RORI?

I run a lot of chatterbots on multiple services (IRC, Discord, Websites, my computer). Some bots do the exact same thing but run on a different service. The idea is to avoid to rewrite the core of each chatterbot and use the same base. Now, I just have to write an interface to communicate with this core on each services.

# Run your instance

In the future, if a chain is online, you will just have to connect your part. But, for now, you can run a complete chain for you. You will need at least an entry point, a `rori_server` with some modules and an endpoint to execute actions. In the future, a website with some pre-configured nodes will be available (or a website which groups all useful entry/endpoints and modules), but for now, you have to run your own nodes. You can check _clients/_ to find currently available entry/endpoints and _rori_server/rori_modules_ to find modules. For more informations, you can read the [wiki](https://github.com/AmarOk1412/rori/wiki) of this repository or the _README.md_ of sub-projects.

# License

```
DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
        Version 2, December 2004

Copyright (C) 2016 Sébastien (AmarOk) Blin <https://enconn.fr>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0\. You just DO WHAT THE FUCK YOU WANT TO.
```

# Contribute

Please, feel free to contribute to this project in submitting patches, corrections, opening issues, etc.
