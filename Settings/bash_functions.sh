# All Bash functions will go here
#
# Source this file into the .bashrc

# Creates new cp and mv function with rsync 
function cpr() {
  rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 "$@"
}
function mvr() {
  rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 --remove-source-files "$@"
}

# Can be use to install the AURs given the clone URL
function aur() {
	git clone "$@"
	name=$(basename "$@" | sed 's/\.git//')
	cd $name
	makepkg -si
	cd ..
	sudo rm -r $name 
}

# print the header (the first line of input)
# and then run the specified command on the body (the rest of the input)
# use it in a pipeline, e.g. ps | body grep somepattern
body() {
    IFS= read -r header
    printf '%s\n' "$header"
    "$@"
}


