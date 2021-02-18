export SSH_AUTH_SOCK
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SLD_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export LC_CTYPE='ja_JP.UTF-8'

#Toolbar for anthy
fcitx -d &
exec /home/julius/.config/startup.sh &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrdb -merge ~/.Xresources
exec bspwm
