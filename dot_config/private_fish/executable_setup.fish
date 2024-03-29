#!/usr/bin/env fish

# greeting
set -U fish_greeting ""

# bat
abbr -a cat bat

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vi mode
function fish_user_key_bindings
    #fish_default_key_bindings
    fish_vi_key_bindings
    bind -M insert \b  backward-kill-word
    bind -M insert \cf accept-autosuggestion
    bind -M insert \ch backward-kill-word
    bind -M insert \ck history-search-backward
    bind -M insert \cj history-search-forward
    bind -M insert \cl forward-word
end
funcsave fish_user_key_bindings


# oh my fish
curl -L https://get.oh-my.fish | fish
omf install
