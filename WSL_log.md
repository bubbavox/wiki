## WSL_log

2020-07-30
#### Installed WSL2 ( [guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10) )
#### Ubuntu setup:
- installed Ubuntu 20.04 via Microsoft Store
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
#### ruby setup:
- installed chruby per [readme]
  - used `setup.sh` instead of `make`
  - added `source /usr/local/share/chruby/chruby.sh` to `~/.bashrc`.
- installed ruby-install per [readme]
- installed ruby 2.7.1 __as root__ (installs into `/opt/rubies`):
  `sudo ruby-install ruby 2.7.1`
- restarted shell
- set default ruby via chruby:
  - added `chruby ruby-2.7.1` to `~/.profile` ( stock Ubuntu doesn't use `.bash_profile` )
#### SSH setup:
- generated new SSH key ( [guide] ) in `~/.ssh/id_200730`
- set `ssh-agent` to auto-launch ( [guide] )
