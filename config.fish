if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Homebrew
set -gx HOMEBREW_PREFIX "/usr/local";
set -gx HOMEBREW_CELLAR "/usr/local/Cellar";
set -gx HOMEBREW_REPOSITORY "/usr/local/Homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/usr/local/bin" "/usr/local/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/usr/local/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/usr/local/share/info" $INFOPATH;

# go env var
fish_add_path /usr/local/go/bin
set -gx GOPATH $HOME/go
fish_add_path $GOPATH/bin
set -gx GOBIN $GOPATH/bin

fish_add_path $HOME/.cargo/bin


# # 1password cli
# op completion fish | source

# npm
fish_add_path ~/.npm-global/bin


# 1password SSH agent
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Aliases
function vim -d 'vim alias for nvim'
	nvim $argv
end

function reload -d 'sources config.fish file'
	source ~/.config/fish/config.fish
	echo "Reloaded fish"
end
set fish_greeting

# # Iterm2 integration
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
