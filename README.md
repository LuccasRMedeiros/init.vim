# init.vim

To easily clone navigate to ~/.config/ and then:
```
#ssh
git clone git@github.com:LuccasRMedeiros/init.vim.git nvim
```
```
# https
git clone https://github.com/LuccasRMedeiros/init.vim.git nvim
```

This config file is for neovim, also it uses [junegunn's vim-plug](https://github.com/junegunn/vim-plug?tab=readme-ov-file#unix)

Instalation instructions from its repository

# Neovim
## Unix, Linux

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Linux (Flatpak)

```
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
## Windows (PowerShell)

```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

**New**:
 - Added nvim-cmp to allow C/C++ code completion using **ccls lsp engine**

Now ccls is a requirement when using this configuration. Instructions for
building and installation can be found on [ccls wiki](https://github.com/MaskRay/ccls/wiki)

To have it on Debian based distros:

```
# bullseye/11 and later
sudo apt install ccls
```
