if status is-interactive
alias brew=/opt/homebrew/bin/brew
set PATH $PATH:/opt/homebrew/bin
set PATH $HOME/.cargo/bin $PATH
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

