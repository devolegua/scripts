export TERM=xterm-256color

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#Ctrl + C	Kill whatever you are running
#Ctrl + D	Exit the current shell
#Esc  + T	Swap the last two words before the cursor

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=":$HOME/.npm/bin:$PATH"          # link to ~/Doc/install/node/bin

export LESS=' -R'
export BROWSER="/usr/bin/chromium"
export PAGER="/bin/less"
export EDITOR="/usr/bin/vim"


RE () {
    echo "## $1" > ~/.expl_rust.md
    rustc --explain $1 >> ~/.expl_rust.md
}

# added by Nix installer
if [ -e /home/oleh/.nix-profile/etc/profile.d/nix.sh ]; then . /home/oleh/.nix-profile/etc/profile.d/nix.sh; fi
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/oleh/.sdkman"
[[ -s "/home/oleh/.sdkman/bin/sdkman-init.sh" ]] && source "/home/oleh/.sdkman/bin/sdkman-init.sh"
