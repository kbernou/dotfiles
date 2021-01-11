#!/bin/bash

# TODO:
#	download all, then install all (can makepkg be used to do multiple in one go?)
#	handle errors better (collect errors and for which packages, write to file or otherwise mention it)


function process_package {
	pkg=$1
	cwd=$2

	cd ~/aur;
	git clone "https://aur.archlinux.org/$pkg.git";
	cd ./$pkg;
	makepkg -sci;
	cd $cwd;
	rm -rf ~/aur/$pkg;
}

arg=$1
cwd=$("pwd")

if [ -z "$1" ]; then
	echo "Must specify AUR package"
	exit

elif [ "${arg,,}" == "help" ]; then
	msg="Against my better judgement, this script will build and install a package from the given AUR repository, or from the ones found in `~/aur/packages`."
	msg="$msg \n\nUSAGE:\n"
	msg="$msg \n\taurpac <package>    # Installs or updates the `package` from the AUR. Automatically adds a record to `~/aur/packages`"
	msg="$msg \n\taurpac pkgs         # Installs or updates the packages located in `~/aur/packages`"

	echo -e "${msg}"
	exit

elif [ "${arg,,}" == "pkgs" ]; then
	for pkg in $(cat ~/aur/packages); do
		process_package $pkg $cwd
	done;
	exit

else
	if ! grep -q $arg ~/aur/packages; then
		echo $arg >> ~/aur/packages
	fi

	process_package $arg $cwd
fi
