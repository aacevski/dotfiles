# Dotfiles 

This repository contains all of my dotfiles that I use on my Arch Linux systems.

## Requirements
Before starting, make sure you have the following installed in your system:

```zsh
sudo pacman -S ansible git
```

## Clone the repo and setup with Ansible

```zsh
git clone git@github.com/aacevski/dotfiles.git ~/dotfiles && cd ~/dotfiles
ansible-playbook dotfiles_setup.yml --ask-become-pass
```

## Preview

<img src="preview.png" />
