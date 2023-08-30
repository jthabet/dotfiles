if status is-interactive
    # Commands to run in interactive sessions can go here
end

# go env var
fish_add_path /usr/local/go/bin
set -gx GOPATH $HOME/go
fish_add_path $GOPATH/bin
set -gx GOBIN $GOPATH/bin

#1password cli
op completion fish | source

# 1password SSH agent
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# homebrew
fish_add_path /usr/local/sbin

# npm
fish_add_path ~/.npm-global/bin

# Aliases
function vim -d 'vim alias for nvim'
	nvim $argv
end	
