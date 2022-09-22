# dotfiles

## setup

https://hub.docker.com/editions/community/docker-ce-desktop-mac
https://iterm2.com/downloads.html
https://slack.com/intl/ja-jp/downloads/mac?geocode=ja-jp
https://github.com/Shougo/dein.vim

## install
 ```
$ mkdir work & cd work & git clone git@github.com:dimgraycat/dotfiles.git;
$ sh ~/work/dotfiles/installer.sh step1
 ```

## install vim plugin for vim Editor
 ```
:call dein#install()
 ```

## add coc plugin for vim Editor
```
 :CocInstall coc-html coc-php-cs-fixer coc-phpls coc-sh coc-sql coc-svg coc-yaml coc-tsserver coc-json coc-css
 ```

## add coc-config
 `:CocConfig`
 ```json
{
    "html.filetypes": ["html","handlebars","htmldjango","blade","ctp"]
}
 ```
