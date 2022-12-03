alias r="ranger-cd"
alias ls="exa"

set CC clang-11
set CXX clang++-11
set -gx EDITOR nvim
set -gx VISUAL nvim

function fish_greeting
end

fish_vi_key_bindings

fish_add_path /usr/local/go/bin 
fish_add_path /home/midwest/go/bin
 
# starship init fish | source
