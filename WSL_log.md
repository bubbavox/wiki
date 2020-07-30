## WSL_log

2020-07-30
### Ubuntu setup:
- updated:
  ```
  sudo apt update
  sudo apt upgrade
  ```
- installed basic packages:
  ```
  sudo apt install -y curl libssl-dev wget
  sudo apt install -y build-essential
  ```
### ruby setup:
- install chruby per [readme]
  - used `setup.sh` instead of `make`
  - added `chruby` line to `.bashrc`
- installed ruby-install per [readme]
- installed ruby 2.7.1 as root:
  `sudo ruby-install ruby 2.7.1`
- restarted shell
- set default ruby via chruby:
  added `chruby ruby-2.7.1` to `~/.profile` ( Ubuntu doesn't use `.bash_profile` )
### SSH setup:
- generated new SSH key ( [guide] ) in `~/.ssh/id_200730`
- set `ssh-agent` to auto-launch ( [guide] )
