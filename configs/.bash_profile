export TERM=xterm-256color

export PATH="$HOME/.npm/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
[ -e ${HOME}/.nix-profile/etc/profile.d/nix.sh ] && . ${HOME}/.nix-profile/etc/profile.d/nix.sh

export BROWSER='firefox'
export EDITOR='vi'
export PAGER='less'

#export CLOUDSDK_COMPUTE_ZONE=europe-west3-a
#export CLOUDSDK_COMPUTE_REGION=europe-west3

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

set -o pipefail

function K {
  echo $1 | festival --tts
}

# OPAM configuration
. $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
