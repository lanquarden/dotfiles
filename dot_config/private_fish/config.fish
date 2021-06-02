set -g -x fish_greeting ''

# start tmux
if status is-interactive
and not set -q TMUX
    tmux has-session -t LOCAL; and tmux attach-session -t LOCAL; or tmux new-session -s LOCAL; and kill %self
end

# GPG
set -gx GPG_TTY (tty)

# personalize pure theme
_pure_set_default pure_symbol_prompt '❯'
_pure_set_default pure_symbol_reverse_prompt '❮'
