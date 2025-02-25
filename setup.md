## zshrc and bashrc

- Shell is a common-line interface that allows users to interact with an unix operating system.
- zsh over bash provides (https://www.quora.com/What-are-the-advantages-of-using-ZSH-over-Bash-on-Ubuntu, https://www.quora.com/What-are-the-advantages-of-using-ZSH-over-Bash-on-Ubuntu).
- Oh my zsh is a community driven for framework for managing zsh configuration.

## Installation

Pre Notes
- macos unix systems are called darwin.
- x86 or amd64 stands for intel chip architectures.
- arm64 for M1 chip architecture.
- brew install on intel chip location is /opt/local/bin. for m1 it is /opt/homebrew/bin. More info on homebrew here Ref[https://docs.google.com/document/d/1gMaNuCTINo916We7O-J58-BzPPv02izR8Gs2qvhBEi8/edit?tab=t.0#heading=h.5wtmvwtde1vx]

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

## Brew Setup

- install homebrew package manager for macos.
``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- If /opt/homebrew/bin is not in path. run the following commands
    ```bash
            echo >> /Users/venktesh.k/.zprofile
            echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/venktesh.k/.zprofile
            eval "$(/opt/homebrew/bin/brew shellenv)"
    ```

## Postgres Setup

- brew install postgresql@17
- postgres is keg-only installation. sym-links to the path are not created, commands like psql will not be available.
- run the below command to set it

    ``` bash
         echo 'export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"' >> ~/.zshrc
    ```
## Bat

- Bat supports syntax highlighting, plus has git integration to show changes in file
- Bat by defaults pipes the output to a pager (less). If you dont have we can set bat --paging=never
- View multiple files at once

- Download tar from releases

    ``` bash
        https://github.com/sharkdp/bat/releases

        tar xzf bat.tar -C ~
        mv bat-* bat
        
        echo "export PATH='Users/venktesh.k/bat:$PATH" >> ~/.zshrc

        alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
    ```

- Some features

    ``` bash
        // reading multiple files
        bat src/*.rs
    ```
    
    ``` bash
        // reading from stdin
        curl -s https://sh.rustup.rs | bat
    ```

    ``` bash
        // show line numbers
        bat -n main.rs  # show line numbers (only)
    ```

## Terminologies

- POSIX: Portable Operating System Interface. (Standards by IEEE for maintaining compatability between operating systems). (https://en.wikipedia.org/wiki/POSIX)
- BASH: Bourne Again Shell
- ZSH: Zee Shell

References

1. https://zsh.sourceforge.io/FAQ/zshfaq01.html#l7
