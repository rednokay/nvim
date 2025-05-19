# My Neovim Config

This is my Neovim configuration written in Lua.
It uses [lazy](https://github.com/folke/lazy.nvim) as plugin-manager and [mason](https://github.com/mason-org/mason.nvim) to manage LSP and related stuff.
[Onedarkpro](https://github.com/olimorris/onedarkpro.nvim) is beeing used as a theme with *Vaporwave* as a default.

## Plugins
- [lazy](https://github.com/folke/lazy.nvim)
- [mason](https://github.com/mason-org/mason.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [rustaceanvim](https://github.com/mrcjkb/rustaceanvim)
- [onedarkpro](https://github.com/olimorris/onedarkpro.nvim)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [vimtex](https://github.com/lervag/vimtex)

## Installation

*Lua* and *luarocks* are required for some lazy functions. Install by using your systems package manager.
On Fedora that would be:

```bash
sudo dnf install lua luarocks
```
Clone the repo to *~/.config/nvim* and run `nvim`. Lazy will start installing all plugins,
after that run `:MasonInstall rust-analyzer` for Rust support.

```bash
cd ~/.config && git clone https://github.com/rednokay/nvim && nvim
```

Within nvim:

```vimscript
:MasonInstall rust-analyzer
```

## Acknowledgments
- The `lazy.nvim` bootstrap code found in [lazy.lua](lua/config/lazy.lua) is adapted from [lazy.nvim](https://github.com/folke/lazy.nvim) (Apache 2.0).
- Plugin configurations are mostly adapted from their respective documentation and examples.
