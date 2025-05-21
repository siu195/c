eval (ssh-agent -c) > /dev/null 2>&1
ssh-add $HOME/.ssh/id_ed25519 > /dev/null 2>&1

set fish_greeting

set -gx EDITOR nvim

abbr -ag S "sudo pacman -Syu"
abbr -ag Rs "sudo pacman -Rs"
abbr -ag Ss "pacman -Ss"

alias rm "echo Use 'trash', or the full path i.e. '/bin/rm'"

abbr sr "source $HOME/.config/fish/config.fish"

set -gx PATH $PATH $HOME/.local/bin

function md
  mkdir -p $argv
  cd $argv
end

# pnpm
set -gx PNPM_HOME "/home/n/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
