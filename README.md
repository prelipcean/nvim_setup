# nvim_setup
This is a sample configuration for neovim to be used as an IDE for code development and maintenance

## Install neovim
Link website: https://neovim.io/ \
Link github repository install instructions: https://github.com/neovim/neovim/blob/master/INSTALL.md

### Pre-built archives
The [Releases](https://github.com/neovim/neovim/releases) page provides pre-built binaries for Linux systems.

```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Then add this to your shell config (`~/.bashrc`, `~/.zshrc`, ...):

```
export PATH="$PATH:/opt/nvim-linux64/bin"
```

## Install packages required
```shell
sudo apt install -y luarocks xclip ripgrep
```
Optional
```shell
sudo apt install tmux
```
## Install Nerd fonts
Download a nerd font from here:
https://www.nerdfonts.com/font-downloads

**Note**: The nerd font shall be mono compatible to be able to appear in Terminal fonts.

For Linux unzip and open terminal from the fonts folder and run below commands:
```shell
sudo mkdir /usr/share/fonts/nerd
sudo mv * /usr/share/fonts/nerd
ls /usr/share/fonts/nerd
sudo fc-cache -f -v

mkdir ~/.fonts
cp /usr/share/fonts/nerd/* ~/.fonts
ls ~/.fonts
fc-cache -fv ~/.fonts
```

For Windows right click on font and Install
Source: https://support.microsoft.com/en-us/office/add-a-font-b7c5f17c-4426-4b53-967f-455339c564c1

After font installation set custom font for terminal window and use a Nerd font.
## Create nvim configuration
Optional: create directories where configuration will be stored:
```shell
mkdir -p ~/.config/nvim/lua/config
mkdir ~/.config/nvim/lua/plugins/
```
### Setup configuration
Use git repo to fast start and copy after all lua files in ~/.config/nvim directory

## Sources
### Youtube videos:
Vhyrro - https://www.youtube.com/watch?v=87AXw9Quy9U&list=PLx2ksyallYzW4WNYHD9xOFrPRYGlntAft \
typecraft - https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn \
Josean Martinez - https://www.youtube.com/watch?v=o4X8GU7CCSU&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07

### Blogs:
https://medium.com/@shaikzahid0713/the-neovim-series-32163eb1f5d0 \
https://medium.com/@shaikzahid0713/rainbow-parenthesis-and-indentation-in-neovim-dd379f4e516f \
https://medium.com/@rishavinmngo/how-to-setup-lsp-in-neovim-1c3e5073bbd1

### Documentation
https://lazy.folke.io/ \
https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation \
https://github.com/neovim/nvim-lspconfig/wiki

### Git repos:
*Plugin manager* \
https://github.com/folke/lazy.nvim

*Color schemes* \
https://github.com/catppuccin/nvim \
https://github.com/rebelot/kanagawa.nvim

*Treesitter* \
https://github.com/nvim-treesitter/nvim-treesitter \
https://github.com/nvim-treesitter/nvim-treesitter-textobjects

*Telescope* \
https://github.com/nvim-telescope/telescope.nvim \
https://github.com/nvim-telescope/telescope-ui-select.nvim

*Nvim-Tree* \
https://github.com/nvim-tree/nvim-tree.lua

*Neo-Tree* \
https://github.com/nvim-neo-tree/neo-tree.nvim

*Lualine* \
https://github.com/nvim-lualine/lualine.nvim

*Identation* \
https://github.com/lukas-reineke/indent-blankline.nvim

*Rainbow-delimiters* \
https://gitlab.com/HiPhish/rainbow-delimiters.nvim

*LSP* \
https://github.com/neovim/nvim-lspconfig \
https://github.com/williamboman/mason.nvim \
https://github.com/williamboman/mason-lspconfig.nvim \
https://github.com/chrisgrieser/nvim-rulebook 

## Clangd notes
https://clang.llvm.org/get_started.html \
https://clangd.llvm.org/config \
https://github.com/rettichschnidi/clang-tidy-misra \
https://github.com/williamboman/nvim-lsp-installer/discussions/392 \
https://smarttech101.com/nvim-lsp-diagnostics-keybindings-signs-virtual-texts \
https://github.com/llvm/llvm-project/releases/tag/llvmorg-19.1.0

Extract archive
```shell
tar -xvf archive.tar.xz
```

Manual running LSP with clangd
```
vim.api.nvim_create_autocmd("BuffEnter", {
  callback = function()
    vim.lsp.start({
     name = "clangd",
     cmd = {"pathandnameofexecut"},
     root_dir = vim.fn.getcwd(),
    })
  end,
})
```

