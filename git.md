---
title: git
description: 
published: true
date: 2023-07-22T17:43:11.727Z
tags: 
editor: markdown
dateCreated: 2021-01-27T23:20:09.220Z
---

# Git

--------------

[book: Pro Git](https://git-scm.com/book) (free HTML / PDF / ePub)

[guide: Understanding Git - ELI5](https://hackernoon.com/understanding-git-fcffd87c15a3)

--------------

## git tricks

https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template

[guide: custom git commands](http://thediscoblog.com/blog/2014/03/29/custom-git-commands-in-3-steps/)

[thread: "git add, commit and push commands in one?"](https://stackoverflow.com/questions/19595067/git-add-commit-and-push-commands-in-one)

### custom `lazygit` bash script: 
using one of the solutions in the above thread, I added the following to `~/.bashrc`:
```
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}
```
then simply `$ lazygit "my first lazygit"`

alternatively, use a windows batch script, or a git alias (see [this thread](https://stackoverflow.com/questions/39121688/windows-custom-git-commands))

### custom aliases & functions on Git for windows:
When using git bash on windows, I placed some custom bash aliases / functions in `C:\Program Files\Git\etc\bash.bashrc` -- not sure if this is the proper way, but it worked.  Syntax is the same as unix bash, except for paths.
```bash
awwork="/d/OneDrive/_work/"
awcode="/d/OneDrive/_work/code"
awwiki="/d/OneDrive/_work/wiki"
awsurb="/d/OneDrive/_work/code/SU_code"

function cdwork {
    cd $awwork
}
function cdcode {
    cd $awcode
}
function cdwiki {
    cd $awwiki
}
function cdsurb {
    cd $awsurb
}
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}
```
--------------

#### LOG: 2020-07-30 - Setting up this repo to sync between local files and GitHub files, with SSH
  - Previously: created an SSH key for my WSL, set SSH-agent to auto-launch with shell, and added my SSH key to GitHub.  See [WSL_log](https://github.com/bubbavox/notes_public/blob/master/WSL_log.md#ssh-setup).
  - Created repo on GitHub `https://github.com/bubbavox/notes_public`
  - _Struggled for a while with pulling, setting upstream, etc..._
  - Realized I just needed a simple `clone`:
    - `cd /mnt/d/_work/_code`
    - `git clone git@github.com:bubbavox/notes_public.git`
  - This creates local repo `/mnt/d/_work/_code/notes_public/` and I can push / pull with just `git push` or `git pull`.


