# Load ~/.aliases, ~/.functions and ~/bash_prompt
for file in ~/.{aliases,functions,bash_prompt}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Put /usr/local/bin before /usr/bin because Homebrew
export PATH=/usr/local/bin:$PATH
