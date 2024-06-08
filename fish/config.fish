alias r="ranger-cd"
alias ls="eza"

set CC clang-11
set CXX clang++-11
set -gx EDITOR nvim
set -gx VISUAL nvim

function fish_greeting
end

fish_vi_key_bindings

fish_add_path /usr/local/go/bin 
fish_add_path ~/bin
fish_add_path ~/go/bin
fish_add_path ~/.cargo/bin

if test -e /opt/homebrew/bin/brew; and status --is-interactive
  eval (/opt/homebrew/bin/brew shellenv)
end
 
# starship init fish | source
