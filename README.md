# 💤 My LazyVim companion configuration for Neovim

This is a companion configuration for [LazyVim](https://github.com/LazyVim/LazyVim).
This configuration is originally templated from [LazyVim Starter](https://github.com/LazyVim/starter).

## Philosophy

I've written many (Neo)vim configurations over many years and I find myself (like others) reaching for a common set of plugin provided functions. A common problem within the plugin ecosystem is that it evolves very rapidly with every major release of Neovim that adds notable features. When this occurs, it becomes a generally painful and daunting task to discover the wealth of new plugins that leverage the new features. More frustrating can be when your existing plugin configuration no longer works when upgrading Neovim or plugin versions.

The goal of this configuration architecture is to offload the bulk of the "day-to-day make Vim an IDE" style plugin curation and configuration to a community managed "base" configuration, then simply override the provided configs and add plugins as necessary. By using this architecture I have been able to achieve what I consider to be my best configuration yet; however, the amount of time spent discovering plugins and dealing with common plugin integration was much more minimal.

## Requirements

* Neovim v0.9.0 or greater.
* git.
* A `C` compiler. Can be `gcc`, `tcc`, `zig`, or `cl` (MSVC).
* `cmake`
* (optional) [ripgrep](https://github.com/BurntSushi/ripgrep). Improves project wide search speed.
* (optional) [fd](https://github.com/sharkdp/fd). Improves file search speed.
* (optional) A patched font to display icons.
  * [Nerd Fonts](https://www.nerdfonts.com/) has a good collection. I personally use [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip).
  * Font Installation
    * [Linux](https://itsfoss.com/install-fonts-ubuntu/)
    * [Windows](https://support.microsoft.com/en-us/office/add-a-font-b7c5f17c-4426-4b53-967f-455339c564c1)

## Installation

* Backup your existing configuration if you have one.

* If you don't know the path of the Neovim configuration folder use this command.

```sh
nvim --headless -c 'echo stdpath("config") | quit'
```

* Now clone this repository in that location.

```sh
git clone https://github.com/mertzt89/lazyvim <path from above>
```

> Do not execute this command as is. Replace `<path from above>` with the correct path from the previous step.

* Next time you start Neovim all plugins will be downloaded automatically. After this process is done `nvim-treesitter` will install language parsers for treesitter. And, `mason.nvim` will download language servers listed in the configuration. Use the command `:Mason` to check the download process of language servers. 

