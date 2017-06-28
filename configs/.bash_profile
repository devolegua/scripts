export TERM=xterm-256color

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.npm/bin:$PATH"
[ -e ${HOME}/.nix-profile/etc/profile.d/nix.sh ] && . /home/oleh/.nix-profile/etc/profile.d/nix.sh

export LESS=' -R'
export BROWSER='/usr/bin/chromium'
export PAGER='/bin/less'
export EDITOR='/usr/bin/vim'

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

