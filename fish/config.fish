alias r="ranger-cd"
alias ls="eza"

set -gx EDITOR nvim
set -gx VISUAL nvim

function fish_greeting
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

fish_vi_key_bindings

fish_add_path /usr/local/go/bin 
fish_add_path ~/bin
fish_add_path ~/go/bin
fish_add_path ~/.cargo/bin

if test -e /opt/homebrew/bin/brew; and status --is-interactive
  eval (/opt/homebrew/bin/brew shellenv)
end
 
fish_add_path ~/bin/vcpkg
set -gx VCPKG_ROOT ~/bin/vcpkg
# starship init fish | source
