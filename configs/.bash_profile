export TERM=xterm-256color

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.npm/bin:$PATH"
[ -e ${HOME}/.nix-profile/etc/profile.d/nix.sh ] && . ${HOME}/.nix-profile/etc/profile.d/nix.sh

export BROWSER='/usr/bin/chromium'
export EDITOR='/usr/bin/vim'

#export CLOUDSDK_COMPUTE_ZONE=europe-west3-a
#export CLOUDSDK_COMPUTE_REGION=europe-west3

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

function K {
  echo $1 | festival --tts
}
