shopt -s expand_aliases

#alias ls="ls -F --color --group-directories-first"
alias ls="exa --group-directories-first"
#alias ll="ls -lhX"
alias ll="exa --group-directories-first -lgbhH --git"

# C=color F=format L=level A=ansi-lines s=size h=human
alias tree='tree -CF --dirsfirst'
#alias t2='tree -L 2'
alias t2="exa --group-directories-first -lb --git --git-ignore -TL 2"
#alias t3='tree -L 3'
alias t3="exa --group-directories-first -lb --git --git-ignore -TL 3"

alias pal='pal -c 10'
alias ncal='ncal -M3'

alias info='info --vi-keys'

alias snode='node --use_strict --throw-deprecation'
alias onode='node --trace_opt --trace_deopt --allow-natives-syntax'

alias tokei='tokei -s code'

#git
alias count_lines="git ls-files | xargs cat | wc -l"
alias cmt="git aa && git s && git commit -m" 

#tmux
alias Tnp='tmux new -s $(basename $PWD)'
alias Tv='tmux rename-window $(basename $PWD); vi'
alias Tk='tmux kill-session'

alias susp='sudo ck-launch-session dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
alias hibernate='sudo ck-launch-session dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Hibernate'

#switch screen
alias to768='xrandr --output LVDS1 --panning "1024x768" --scale "1x1.28"'
alias to600='xrandr --output LVDS1 --panning "1024x600" --scale "1x1"'

#screenshot
alias Scr='sleep 2; xwd -root | xwdtopnm | pnmtopng > "`date`.png"'

#packages
alias packs='sudo dpkg-query -l'

#unzip -j file.zip -d directory

alias alsamixer='alsamixer -V all -c 0'

alias objdump='objdump -w -M intel'
alias readelf='readelf -W'
