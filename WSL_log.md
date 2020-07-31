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
- installed some basics:
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
- deleted old keys on github
- [generated new SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) w/ custom filename `~/.ssh/id_200730`; set password
- started `ssh-agent` with `eval $(ssh-agent -s)` and added key with `ssh-add ~/.ssh/200730` (non-default filename of my key)
- [set ssh-agent to auto-launch with bash](https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases):
  - added [code block](https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows) from guide to `~/.profile`
- [added __public__ key to GitHub](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account):
  - printed key to shell with `cat ~/.ssh/200730.pub` and copy/pasted to [github SSH page](https://github.com/settings/keys)
