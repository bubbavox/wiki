---
title: bash
description: 
published: true
date: 2023-07-22T17:43:06.409Z
tags: 
editor: markdown
dateCreated: 2021-01-27T23:20:01.218Z
---

# bash

[linux shell wiki](https://bash.cyberciti.biz/guide/Main_Page) \
[shell scripting tutorial](https://bash.cyberciti.biz/guide/$1) \

## bash customization:
[.bashrc prompt (PS1) generator](http://bashrcgenerator.com/) - EZ-mode, drag-and-drop tool for custom prompts (incl. colors)
[Bash tips: Colors and formatting (ANSI/VT100 Control sequences)](https://misc.flogisoft.com/bash/tip_colors_and_formatting) \
[How to Customize (and Colorize) Your Bash Prompt](https://www.howtogeek.com/307701/how-to-customize-and-colorize-your-bash-prompt/)

### directory shortcuts (with custom bash variables)
I want to quickly `cd` to the directories I use the most.  Maybe there's a better way, but here is what I did for my code directory `_code`:

Added to `~/.bashrc` file : `_code="/mnt/d/_work/_code"` ( no spaces around `=` ) \
Now I can get to the dir with `cd $_code`.