# Dotfiles 

This repository contains all of my dotfiles that I use on my Arch Linux systems.

## Requirements
Before starting, make sure you have the following installed in your system:


### Git

```console
pacman -S git 
```

### Yay 

```console
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

### Stow 

```console
pacman -S stow 
```

### Extras

```console
pacman -S qt5ct lxappearance-gtk3 xfce4-power-manager dunst picom polybar rofi feh redshift pulseaudio blueman gnome-screenshot
```

```console
yay -S qt5-styleplugins nm-applet
```

## Installation

```console
git clone git@github.com/dreamsofautonomy/dotfiles.git
cd dotfiles
stow .
```

## Preview

<img src="preview.png" />
