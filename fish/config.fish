if status is-interactive
alias brew=/opt/homebrew/bin/brew
set PATH $PATH:/opt/homebrew/bin
set PATH $HOME/.cargo/bin $PATH
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish





# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/frandy/Miniconda/bin/conda
    eval /Users/frandy/Miniconda/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

