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
flatpak install flathub org.mozilla.firefox -y

```

# RPM
```


```

# Steam


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
