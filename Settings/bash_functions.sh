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
function body() {
	IFS= read -r header
	printf '%s\n' "$header"
	"$@"
}


function actpyenv(){
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
}

function loadnvm(){
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

function showlog() {
	adb logcat | grep -F "`adb shell ps | grep com.secretbiology.insta | tr -s [:space:] ' ' | cut -d' ' -f2`"
	#function_body
}
