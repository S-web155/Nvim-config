# Nvim-config

Custom configuration for [Neovim](https://neovim.io/) using Lua.

## Overview

This repository contains my personal Neovim configuration files written in Lua. It's designed to enhance productivity, provide a modern development experience, and showcase useful plugins and settings for coding.

## Features

- Written in Lua for performance and flexibility.
- Modular structure for easy customization.
- Plugin management and configuration.
- Key mappings and usability improvements.
- Suitable for development in python, lua and c++ only right now.

## Getting Started

### Prerequisites

- [git](https://git-scm.com/) for cloning the repository
- [Neovim](https://neovim.io/) (Recommended version 0.5+)
- You can go to their website for download
- or use package manager's:-
### On Window's
- With chocolatey
  ```bash
  choco install neovim
  ```
- With winget
  ```bash
  winget install Neovim.Neovim
  ```
### On Mac
- With Homebrew
  ```bash
  brew install neovim
  ```
- With Mac ports
  ```bash
  sudo port selfupdate
  sudo port install neovim
  ```
### Installation

1. **Clone the repository:**
- For Mac's
   ```bash
   git clone https://github.com/S-web155/Nvim-config.git ~/.config/nvim
   ```
- For Window's
  ```bash
  git clone https://github.com/S-web155/Nvim-config.git ~/AppData/Local/nvim
  ```
- If you can't find the directory nvim you might need to make it
- You can make it by the command
  ```bash
  cd AppData/Local
  mkdir nvim
  ```
- And then copy the git
- If you had nvim config earlier and now you are switching
- Please make sure to clean the nvim and nvim-data folder on window's
- or the nvim and ~/.local/share/nvim/ in mac

3. **Start Neovim:**
   ```bash
   nvim
   ```
- After you start it the plugins will install itself

## Usage

- Open Neovim and enjoy the custom configuration.
- Modify the Lua files to suit your workflow.
- Refer to comments in the configuration files for guidance.

## Contributing

Feel free to fork the repository and submit pull requests to improve or add new features.

## Author

[S-web155](https://github.com/S-web155)

---

*This repo is public and actively maintained. For suggestions or issues, please open an issue or contact the author on GitHub.*
