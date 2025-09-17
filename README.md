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
## Plugins

| Plugin Name | Description | Link |
|-------------|-------------|------|
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Treesitter syntax highlighting & parsing | Syntax highlighting, code navigation |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line plugin | Highly customizable status line |
| [AlexvZyl/nordic.nvim](https://github.com/AlexvZyl/nordic.nvim) | Colorscheme | Nordic theme for Neovim |
| [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard/start screen | Customizable welcome screen |
| [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer | Modern file explorer pane |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration | Git commands in Neovim |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder | Search files, buffers, help, etc. |
| [Civitasv/cmake-tools.nvim](https://github.com/Civitasv/cmake-tools.nvim) | CMake integration | C++/C project build system |
| [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug Adapter Protocol | Debugging support |
| [folke/noice.nvim](https://github.com/folke/noice.nvim) | Enhanced UI/notifications | Improved messages, notifications |
| [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) | Notification system | Popup notifications |
| [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UI library | UI components for plugins |
| [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/DAP installer | Manage LSP, DAP, linters |
| [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Mason <-> lspconfig bridge | Integrate Mason with lspconfig |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configs | Configure language servers |
| [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine | Completion suggestions |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine | Code snippets |
| [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal management | Toggleable terminals |

*Note: Some plugins have dependencies (see plugin config files for details). For a full plugin list, see the [`lua/plugins/`](https://github.com/S-web155/Nvim-config/tree/main/lua/plugins) directory.*

## Usage

- Open Neovim and enjoy the custom configuration.
- Modify the Lua files to suit your workflow.
- Refer to comments in the configuration files for guidance.

## Contributing

Feel free to fork the repository and submit pull requests to improve or add new features.

## Author

[S-web155](https://github.com/S-web155)

## Inspiration
- Highly inspired from typecraft(https://www.youtube.com/@typecraft_dev)
- You can go check out his nvim-config at(https://github.com/cpow/neovim-for-newbs)

---

*This repo is public and actively maintained. For suggestions or issues, please open an issue or contact the author on GitHub.*
