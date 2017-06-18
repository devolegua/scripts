export TERM=xterm-256color

#Ctrl + C	Kill whatever you are running
#Ctrl + D	Exit the current shell
#Esc  + T	Swap the last two words before the cursor

# set PATH so it includes user's private bin if it exists
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=":$HOME/.npm/bin:$PATH"
if [ -d "$HOME/bin" ] ; then PATH="$HOME/bin:$PATH"; fi
if [ -e /home/oleh/.nix-profile/etc/profile.d/nix.sh ]; then . /home/oleh/.nix-profile/etc/profile.d/nix.sh; fi
export SDKMAN_DIR="/home/oleh/.sdkman"
[[ -s "/home/oleh/.sdkman/bin/sdkman-init.sh" ]] && source "/home/oleh/.sdkman/bin/sdkman-init.sh"

export LESS=' -R'
export BROWSER="/usr/bin/chromium"
export PAGER="/bin/less"
export EDITOR="/usr/bin/vim"

if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

