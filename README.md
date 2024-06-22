# dotfiles
Configuration files for bash and vim

## Requirements
- Stow:
    sudo apt-get install stow

## How to use
- Nvim:
    Install nvim: https://github.com/neovim/neovim/blob/master/INSTALL.md
    Install ripgrep: https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
    Link repo files with stow, bash`stow -t ~/ nvim`
    LSP requirements:
        - npm: https://nodejs.org/en/download/package-manager
        - python-venv

- Bash
    Install zoxide: https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation
    Link repo files with stow, bash`stow -t ~/ bashrc`

