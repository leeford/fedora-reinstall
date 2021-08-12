# fedora-reinstall


# Post-install Tasks
```
sudo hostnamectl set-hostname lford-fedora
sudo dnf upgrade --refresh
sudo dnf check
sudo dnf autoremove
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
sudo reboot now
```

# Flatpak
```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client
flatpak install com.borgbase.Vorta
flatpak install com.discordapp.Discord
flatpak install com.getpostman.Postman
flatpak install com.leinardi.gst
flatpak install de.haeckerfelix.Shortwave
flatpak install net.cozic.joplin_desktop
flatpak install org.gimp.GIMP
flatpak install org.gtk.Gtk3theme.Adwaita-dark
flatpak install org.inkscape.Inkscape
flatpak install org.libreoffice.LibreOffice
flatpak install org.signal.Signal
flatpak install org.telegram.desktop
flatpak install org.wireshark.Wireshark
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.gnome.Extensions
```

# Configure RPM
```
echo 'fastestmirror=1' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
echo 'deltarpm=true' | sudo tee -a /etc/dnf/dnf.conf
sudo dnf copr enable dawid/better_fonts -y
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[teams]\nname=teams\nbaseurl=https://packages.microsoft.com/yumrepos/ms-teams\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/teams.repo'
sudo sh -c 'echo -e "[vscode]\nname=vscode\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo sh -c 'echo -e "[azure-cli]\nname=azure-cli\nbaseurl=https://packages.microsoft.com/yumrepos/azure-cli\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo'
sudo sh -c 'echo -e "[1password]\nname=1password\nbaseurl=https://downloads.1password.com/linux/rpm/beta/\$basearch\nenabled=1\ngpgcheck=1\ngpgkey=https://downloads.1password.com/linux/keys/1password.asc" > /etc/yum.repos.d/1password.repo'
sudo sh -c 'echo -e "[gh-cli]\nname=gh-cli\nbaseurl=https://cli.github.com/packages/rpm\nenabled=1\ngpgcheck=1\ngpgkey=http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xc99b11deb97541f0" > /etc/yum.repos.d/gh-cli.repo'
sudo sh -c 'echo -e "[insync]\nname=insync\nbaseurl=http://yum.insync.io/fedora/\$releasever/\nenabled=1\ngpgcheck=1\ngpgkey=https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key" > /etc/yum.repos.d/insync.repo'
sudo sh -c 'echo -e "[microsoft-edge-dev]\nname=azure-cli\nbaseurl=https://packages.microsoft.com/yumrepos/edge/\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/microsoft-edge-dev.repo'
sudo sh -c 'echo -e "[packages-microsoft-com-prod]\nname=packages-microsoft-com-prod\nbaseurl=https://packages.microsoft.com/rhel/8/prod/\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/microsoft-rhel8.repo'
```

# Packages
```
sudo dnf -y install fontconfig-font-replacements
sudo dnf -y install gnome-tweaks
sudo dnf -y install teams
sudo dnf -y install code
sudo dnf -y install azure-cli
sudo dnf -y install gh
sudo dnf -y install 1password
sudo dnf -y install insync
sudo dnf -y install microsoft-edge-dev
sudo dnf -y install compat-openssl10
sudo dnf -y install pwsh
sudo dnf -y install steam
sudo dnf -y install powershell
sudo dnf -y install goverlay
sudo dnf -y install mangohud
sudo dnf -y install gamemode
sudo dnf -y install fish util-linux-user
sudo dnf -y install gnome-shell-extension-appindicator
sudo dnf -y install rpmfusion-free-release-tainted
sudo dnf -y install dnf-plugins-core
sudo dnf -y install cabextract xorg-x11-font-utils fontconfig
sudo dnf -y install vlc
sudo dnf -y install powerline-fonts
sudo dnf groupupdate sound-and-video
sudo dnf -y install libdvdcss
sudo dnf -y install gstreamer1-plugins-{bad-\*,good-\*,ugly-\*,base} gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel ffmpeg gstreamer-ffmpeg 
sudo dnf -y install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf -y install gstreamer1-plugin-openh264 mozilla-openh264
sudo dnf -y remove gnome-tour
```

# Gnome Extensions


# Theming
```
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```

# Shell
Set Fish to default shell and amend PATH to include ~/.local/bin
```
chsh -s /usr/bin/fish
mkdir -p /home/$USER/.local/bin
set -Ua fish_user_paths /home/$USER/.local/bin
curl -L https://get.oh-my.fish | fish
omf install bobthefish
```
