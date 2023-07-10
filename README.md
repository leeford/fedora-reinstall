# fedora-reinstall


# Post-install Tasks
```
sudo hostnamectl set-hostname lford-fedora
sudo dnf -y upgrade --refresh
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
flatpak install com.discordapp.Discord -y
flatpak install de.haeckerfelix.Shortwave -y
flatpak install net.cozic.joplin_desktop -y
flatpak install org.signal.Signal -y
flatpak install org.telegram.desktop -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.gnome.Extensions -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub net.davidotek.pupgui2 -y
flatpak install org.freedesktop.Platform.VulkanLayer.MangoHud -y
flatpak install flathub com.valvesoftware.Steam -y
```

# Configure RPM
```

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
sudo dnf -y install microsoft-edge-dev
sudo dnf -y install powershell
sudo dnf -y install fish util-linux-user
sudo dnf -y install gnome-shell-extension-appindicator
sudo dnf -y install rpmfusion-free-release-tainted
sudo dnf -y install dnf-plugins-core
sudo dnf -y install cabextract xorg-x11-font-utils fontconfig
sudo dnf -y install vlc
sudo dnf -y install hugo
sudo dnf -y install powerline-fonts
sudo dnf -y groupupdate sound-and-video
sudo dnf -y install libdvdcss
sudo dnf -y install gstreamer1-plugins-{bad-\*,good-\*,ugly-\*,base} gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel ffmpeg gstreamer-ffmpeg 
sudo dnf -y install lame\* --exclude=lame-devel
sudo dnf -y group upgrade --with-optional Multimedia
sudo dnf -y config-manager --set-enabled fedora-cisco-openh264
sudo dnf -y install gstreamer1-plugin-openh264 mozilla-openh264
sudo dnf -y remove gnome-tour
```

# Gnome Extensions
Install the following extensions:

![image](https://user-images.githubusercontent.com/472320/129206525-a6c3369d-06f8-44ed-afba-5b2d36682934.png)

# Shell
Set Fish to default shell and amend PATH to include ~/.local/bin
```
chsh -s /usr/bin/fish
mkdir -p /home/$USER/.local/bin
set -Ua fish_user_paths /home/$USER/.local/bin
curl -L https://get.oh-my.fish | fish
omf install bobthefish
omf install nvm
```

# Misc
* Install `Hack` as part of https://github.com/powerline/fonts
* Install printer drivers from https://asia.canon/en/support/0100924010 and extract
  ```
  sudo ./install.sh
  ```
  Add printer
