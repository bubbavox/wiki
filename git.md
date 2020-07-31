# Git


#### Log -2020-07-30- Setting up this repo to sync between local files and GitHub files, with SSH
  - _Trying to consolidate the steps, hopefully accurately, because I actually did all this in a roundabout clumsy way_
  - Previously: created an SSH key for my WSL, set SSH-agent to auto-launch with shell, and added my SSH key to GitHub.  See [WSL_log](https://github.com/bubbavox/notes_public/blob/master/WSL_log.md#ssh-setup).
  - Created repo on GitHub `https://github.com/bubbavox/notes_public/new/master`
  - Created local folder `D:/_work/_code/notes_public`
  - In WSL shell (ubuntu bash):
  - initialized local git repository in that folder:
    - `cd /mnt/d/_work/_code/notes_public`
    - `git init`
  - Pulled the repo from GitHub to local (with SSH):
    - `git pull git@github.com:bubbavox/notes_public.git`
  - Set github repo as ... _upstream branch?_ ... _tracked remote?_ :
    - `git push -u git@github.com:bubbavox/notes_public.git`
    - _my purpose here is to be able to conveniently `git push` or `git pull` with no further arguments.  I'm unsure of what exactly it does, or whether there's a more direct way to do it._
    
  

