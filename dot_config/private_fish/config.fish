set -g -x fish_greeting ''

# start tmux
if status is-interactive
and not set -q TMUX
    set tmux_name (string upper (hostname))
    tmux has-session -t $tmux_name; and tmux attach-session -t $tmux_name; or tmux new-session -s $tmux_name; and kill %self
end

# GPG
set -gx GPG_TTY (tty)

# personalize pure theme
_pure_set_default pure_symbol_prompt '❯'
_pure_set_default pure_symbol_reverse_prompt '❮'
