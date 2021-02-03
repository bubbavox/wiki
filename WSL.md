# WSL



## WSL log 

### _move this to a more general coding page_

the log of my environment setup, incl. WSL2, Ubuntu, Ruby, & SSH to GitHub. NOTE: I don't really know what I'm doing.

-------------------

### 2021-02-02: Fresh setup of WSL2 environment ( [MS guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10) ) on Windows 10 build 20H2

Reinstalled due to a problem with Solargraph (didn't fix it, but see the fix [here](https://forums.sketchup.com/t/solargraph-not-working-with-wsl/151684)), this time installing Ruby as user.  Another difference: installing ruby *before* installing chruby.

#### Ubuntu setup

- installed Ubuntu 20.04 LTS via Microsoft Store

- updated linux packages:
  - `sudo apt update`
  - `sudo apt upgrade`
- installed some basics:
  - `sudo apt install -y curl libssl-dev wget`
  - `sudo apt install -y build-essential`

#### Ruby setup

- installed [ruby-install](https://github.com/postmodern/ruby-install) per readme
- installed ruby 2.7.1 _as user_ (installs into `/opt/rubies`):
  - `ruby-install ruby 2.7.1`
- installed [chruby](https://github.com/postmodern/chruby) per readme
  - used install script `setup.sh` instead of `make`
  - added `source /usr/local/share/chruby/chruby.sh` to `~/.bashrc`.
- restarted shell
- set default ruby:
  - added `chruby ruby-2.7.1` to `~/.profile` ( stock Ubuntu doesn't use `.bash_profile` )
- updated gems: `gem update`
- OOPS that broke gems:  
  - `/home/bubba/.rubies/ruby-2.7.1/bin/ruby: symbol lookup error: /home/bubba/.gem/ruby/2.7.1/gems/etc-1.2.0/lib/etc.so: undefined symbol: rb_deprecate_constant`
  - Found solution in [this thread](https://github.com/ruby/etc/issues/12) -- etc-1.2.0 incompatible with ruby 2.7.1 -- removed etc gem files:
    - `/home/bubba/.gem/ruby/2.7.1/gems/2.7.0/gems/etc-1.2.0/`
    - `/home/bubba/.gem/ruby/2.7.1/specifications/etc-1.2.0.gemspec`
    - Optionally, `/home/bubba/.gem/ruby/2.7.1/extensions/x86_64-linux/2.7.0-static/etc-1.2.0/`
  - and installed older version with `gem install etc -v 1.1.0`. good!
- installed gem `solargraph` .. which installed dependencies including `rubocop` & `yard`
- installed another Ruby -- 2.7.2 -- and set as default by adding `chruby ruby-2.7.2` to `~/.profile`
  - NOTE sketchup 2021 uses Ruby 2.7.1 -- but 2.7.2 seems the go-to stable version, and to bring only minor changes
- see also Solargraph troubleshooting (vscode.md)
  
#### SSH setup

- deleted old keys on github
- [generated new SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) w/ `ssh-keygen -t rsa -b 4096 -C "email@email.com"` ; set password
- started `ssh-agent` with `eval $(ssh-agent -s)` and added new key with `ssh-add ~/.ssh/id_rsa`
- [set ssh-agent to auto-launch with bash](https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases):
  - added [code block](https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows) from guide to `~/.profile`
- [added __public__ key to GitHub](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account):
  - printed key to shell & copied to Windows clipboard with `cat ~/.ssh/id_rsa.pub | clip.exe` and copy/pasted to my [github SSH page](https://github.com/settings/keys)

customized ~/.bashrc -- added j some time-saving aliases and functions

#### VS-code setup log
see also vscode.md

- installed vscode as user
- settings & LOCAL extensions seem to have been saved from previous installation
- erased old workspaces
- installed extensions to WSL:
  - Ruby
  - ruby-rubocop
  - Ruby Solargraph (had to solve error ['invalid byte sequence in UTF-8'](https://forums.sketchup.com/t/solargraph-not-working-with-wsl/151684))
  - Seeing is Believing Integration
  - Auto Add Brackets in String Interpolation
  - Markdown All in One

---------------------

### previous setup - 2020-07-30

#### Installed WSL2 ( [guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10) ) on Windows 10 build 2004
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
- installed [chruby](https://github.com/postmodern/chruby) per readme
  - used install script `setup.sh` instead of `make`
  - added `source /usr/local/share/chruby/chruby.sh` to `~/.bashrc`.
- installed [ruby-install](https://github.com/postmodern/ruby-install) per readme
- installed ruby 2.7.1 __as root__ (installs into `/opt/rubies`):
  `sudo ruby-install ruby 2.7.1`
- restarted shell
- set default ruby via chruby:
  - added `chruby ruby-2.7.1` to `~/.profile` ( stock Ubuntu doesn't use `.bash_profile` )

#### SSH setup:
- deleted old keys on github
- [generated new SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) w/ `ssh-keygen -t rsa -b 4096 -C "email@email.com"` ; set password
- started `ssh-agent` with `eval $(ssh-agent -s)` and added new key with `ssh-add ~/.ssh/id_rsa`
- [set ssh-agent to auto-launch with bash](https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases):
  - added [code block](https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows) from guide to `~/.profile`
- [added __public__ key to GitHub](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account):
  - printed key to shell & copied to Windows clipboard with `cat ~/.ssh/id_rsa.pub | clip.exe` and copy/pasted to my [github SSH page](https://github.com/settings/keys)
