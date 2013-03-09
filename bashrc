#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='[\[\033[1;32m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\] \W]\$ '

setxkbmap de
export EDITOR=nano
complete -cf sudo 
export TMPDIR=/sylph/BUILD_TEMP/

# keychain
#with gpg 
#alias KEY='eval $(keychain --eval --agents ssh,gpg -Q --quiet id_ecdsa id_dsa 1E662764 ACDBF3B5 BE727FFF E029723D 4F426E91 FDBF6D1D)'
#
#without gpg
#alias KEY='eval $(keychain --eval --agents ssh -Q --quiet id_ecdsa id_dsa)'
# automatic ssh
eval $(keychain  --eval --agents ssh -Q --quiet id_ecdsa id_dsa)

#alias chrome='google-chrome --proxy-server="socks://localhost:9050"'
alias gitty="sudo packer -S --noedit --noconfirm btrfs-progs-git lxappearance2-git obkey-git archiso-git heimdall-git mycinemaproject-git python-setuptools_git groove-dl-git spacefm-git"
alias uppy='sudo packer -Syu --noedit --noconfirm; sudo abs; sudo pacman -Sc --noconfirm'
alias nessy='sudo nessus-update-plugins'

# msf
#export MSF_DATABASE_CONFIG=/home/apovis/msf/config/database.yml

# grub-update
alias nk='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# chromium via tor ;-)
alias CHT='chromium --proxy-server="socks5://soeki6501:9060"'

# vm start,status,stop
alias vm.start='sudo systemctl start libvirtd.service'
alias vm.status='sudo systemctl status libvirtd.service'
alias vm.stop='sudo systemctl stop libvirtd.service'
alias vm.restart='sudo systemctl restart libvirtd.service'

# proxy
alias tor.start='sudo systemctl start tor.service polipo.service'
alias tor.status='sudo systemctl status tor.service polipo.service'
alias tor.restart='sudo systemctl restart tor.service polipo.service'
alias tor.stop='sudo systemctl stop tor.service polipo.service'

# update menues
alias MENU='mmaker -vf OpenBox3'

# vpn-idms
alias idms.up='sudo netcfg -u idms'
alias idms.down='sudo netcfg -d idms'
alias idms.restart='sudo netcfg -r idms'

# git bash completion
source /usr/share/git/completion/git-completion.bash

# winxp
#alias MS='xfreerdp -g 1152x864 -d IS-TELEDATA -T windoof -u olusan -z olusan-vm.intern.is-teledata.com'
alias MS='xfreerdp -g 1920x1080 -d IS-TELEDATA -T windoof -u olusan -z 10.199.195.186'

# fw.stuff
alias elly.start='sudo systemctl start elly'
alias elly.stop='sudo systemctl stop elly'
alias elly.status='sudo systemctl status elly'
alias elly.restart='sudo systemctl stop elly; sudo systemctl start elly'

#pwd gen
#alias APG='apg -m 8 -x 16 -n 10 -a 1 -M SNCL -s'
alias APG='apg -a 0 -M SNCL -t -n 15 -m 9 -x 16'

# grep with color
#alias grep='grep --color=auto'
export GREP_OPTIONS='--color=auto'

# tar aliases
alias txz='tar -xvzf'
alias txj='tar -xvjf'
alias txJ='tar -xvJf'
alias tcz='tar -cvzf'
alias tcj='tar -cvjf'
alias tcJ='tar -cvJf'