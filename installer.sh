#!/bin/sh

step1 () {
    read -p "your email: " email;
    ssh-keygen -t rsa -b 4096 -C "$email";

    # homebrew install
    cd ~;
    mkdir homebrew & curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C homebrew;
    curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew;

    echo "next step: $ sh ~/work/dotfiles/installer.sh step2"
}

step2 () {
    # brew install
    ./homebrew/bin/brew install \
        git \
        vim \
        ag \
        bat \
        starship \
        anyenv \
        awscli \
        mysql \
        brew-php-switcher \
        php \
        composer \
        zsh-completions

    ./homebrew/bin/brew unlink php

    cp ~/work/dotfiles/.zshrc ~/.zshrc

    # fzf install
    $(brew --prefix)/opt/fzf/install

    echo "next step: $ sh ~/work/dotfiles/installer.sh step3"
}

step3 () {
    # anyenv setup
    anyenv install --init

    # node setup
    anyenv install nodenv
    nodenv install 10.23.0

    # yarn
    npm install -g yarn

    echo "next step: $ sh ~/work/dotfiles/installer.sh step4"
    nodenv rehash
}

step4 () {
    # fzf install
    $(brew --prefix)/opt/fzf/install

    # github setting
    read -p "your github name:" gitname;
    read -p "your github email:" gitemail;
    git config --global user.name "$gitname";
    git config --global user.email $gitemail;

    echo '[include]' >> ~/.gitconfig
    echo '    path = ~/work/dotfiles/gitconfig/alias.config' >> ~/.gitconfig

    # setup vim
    cp ~/work/dotfiles/.vimrc ~/.vimrc
}

case "$1" in
    "step2") step1 ;;
    "step2") step2 ;;
    "step3") step3 ;;
    "step4") step4 ;;
    *) echo "install start command: $ sh ~/work/dotfiles/installer.sh step1" ;;
esac

exec $SHELL -l
