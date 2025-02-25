## zshrc and bashrc

- Shell is a common-line interface that allows users to interact with an unix operating system.
- zsh over bash provides (https://www.quora.com/What-are-the-advantages-of-using-ZSH-over-Bash-on-Ubuntu, https://www.quora.com/What-are-the-advantages-of-using-ZSH-over-Bash-on-Ubuntu).
- Oh my zsh is a community driven for framework for managing zsh configuration.

## Installation

### ZSH Installation
- download from reference [1]
- verify version
	``` bash
		zsh --version
	```

- install oh my zsh

``` bash
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

powerlevel10k theme plugin (https://github.com/romkatv/powerlevel10k)

- it is recommended to install one of fonts like nerd font. Automatically fonts are installed in temrinals like iterm via the p10k installer. 

``` bash
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

### VIM Setup

- Copy vimrc and create a file under ~/.vim
- Use Plug as the plugin manager for vim, creates a folder called autload and stores a single vim file (vim-plug).
- Creates a plugin directory for managing all plugins.
- Reference: https://fanwangecon.github.io/Tex4Econ/nontex/install/linux/fn_vim.html

  ``` bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

## Terminologies

- POSIX: Portable Operating System Interface. (Standards by IEEE for maintaining compatability between operating systems). (https://en.wikipedia.org/wiki/POSIX)
- BASH: Bourne Again Shell
- ZSH: Zee Shell

References

1. https://zsh.sourceforge.io/FAQ/zshfaq01.html#l7
