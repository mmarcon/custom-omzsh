macos () {
	case "$1" in
		"clean:downloads")
			clean_downloads
		;;
	esac
}

clean_downloads() {
	setopt rm_star_silent
	echo -n "Deleting all downloaded files... "
	rm -rf ~/Downloads/*
	echo "done"
	setopt no_rm_star_silent
}