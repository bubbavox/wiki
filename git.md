# Git


#### LOG: 2020-07-30 - Setting up this repo to sync between local files and GitHub files, with SSH
  - Previously: created an SSH key for my WSL, set SSH-agent to auto-launch with shell, and added my SSH key to GitHub.  See [WSL_log](https://github.com/bubbavox/notes_public/blob/master/WSL_log.md#ssh-setup).
  - Created repo on GitHub `https://github.com/bubbavox/notes_public/new/master`
  - _Struggled for a while with pulling, setting upstream, etc..._
  - Realized none of that was necessary; did a simple, fresh `clone`:
    - WSL shell:
      - `cd /mnt/d/_work/_code`
      - `git clone git@github.com:bubbavox/notes_public.git`

[guide: custom git commands](http://thediscoblog.com/blog/2014/03/29/custom-git-commands-in-3-steps/)

[SO thread: custom git functions](https://stackoverflow.com/questions/19595067/git-add-commit-and-push-commands-in-one)

for example, I added the following to `~/.bashrc`:
```
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}
```
then just `$ lazygit "my first lazygit"`