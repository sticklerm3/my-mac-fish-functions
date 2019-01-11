#!/usr/env fish

# from herrbischoff/fish-osx
# Update functions

function __freebsd_portmaster
	printf "\n====[ Upgrade Software ] ===================================\n"; and \
	sudo portmaster -aBd; and \
	sudo portmaster -y --clean-distfiles
end

function __freebsd_pkg
	printf "\n====[ Upgrade Software ] ===================================\n"; and \
	sudo pkg update; and \
	sudo pkg upgrade
end

function __freebsd_synth
	printf "\n====[ Compile and Upgrade Software ]========================\n"; and \
	sudo synth upgrade-system
end

function __freebsd_portsnap
    printf "\n====[ Update Ports tree ]===================================\n"; and \
    sudo portsnap fetch update
end

function __freebsd_ezjail_ports
    set cmd (which ezjail-admin)
    if test $status -eq 0
        printf "\n====[ Update ezjail Ports tree ]============================\n"; and \
        sudo ezjail-admin update -P
    end
end

function __freebsd_freebsd-update
	printf "====[ System Software Update ]==============================\n"; and \
	sudo freebsd-update fetch; and \
	sudo freebsd-update install
end

function __freebsd_source
	printf "====[ Update System Sources ]===============================\n"; and \
	sudo svnlite update /usr/src
end

function __update_node_packages
    set cmd (which npm)
    set os (uname)
    if test $status -eq 0
        printf "\n====[ npm ]=================================================\n"
        if [ $os = "Darwin" ]
            npm -g upgrade
        else
            sudo npm -g upgrade
        end
    end

     set cmd (which yarn)
     if test $status -eq 0
         printf "\n====[ yarn ]================================================\n"; and \
         yarn global upgrade
     end
    set -e cmd
    set -e os
end

function __update_gems
    if test -d $HOME/.rvm/bin
        printf "====[ Gems ]================================================\n"; and \
        gem update; and \
        gem cleanup
    end
end

function __macos_software_update
	printf "\n====[ Apple Software Update ]===============================\n"; and \
	sudo softwareupdate -i -a
end

function __macos_appstore
    set cmd (which mas)
    if test $status -eq 0
        printf "\n====[ App Store ]===========================================\n"; and \
        mas upgrade
    end
    set -e cmd
end

function __macos_macports
    set cmd (which port)
    if test $status -eq 0
        printf "\n====[ MacPorts ]============================================\n"; and \
        sudo port selfupdate; and \
        sudo port outdated; and \
        sudo port upgrade outdated; and \
        sudo port uninstall leaves
        port uninstall inactive
    end
    set -e cmd
end

function __macos_homebrew
    set cmd (which brew)
    if test $status -eq 0
        printf "\n====[ Homebrew ]============================================\n"; and \
        brew update; and \
        brew upgrade --cleanup; and \
        # brew upgrade --fetch-HEAD universal-ctags; and \
        brew cleanup -s; and \
        brew prune
    end
    set -e cmd
end

function __update_pip
    set cmd (python -m pip_review --help)
    if test $status -eq 0
        printf "\n====[ pip ]=================================================\n"; and \
        python -m pip_review --auto
    end
    set -e cmd
end

function __debian_apt
	printf "\n====[ apt-get ]=============================================\n"; and \
	sudo apt update; and \
	sudo apt upgrade
end

#####

function sysupdater --description 'Update system software'
	switch (uname)
		case Darwin
			__macos_software_update
			__macos_appstore
			__macos_homebrew
			__update_node_packages
			__update_gems
			__update_pip
		case Linux
			__debian_apt
			__update_node_packages
			# __update_gems
			# __update_pip
		case FreeBSD
			if [ "$argv[1]" = "jail" ]
                __freebsd_portmaster
                __update_node_packages
                # __update_gems
                # __update_pip
            # else if [ (uname -p) = "armv6" ]
            #     __freebsd_portsnap
            #     __freebsd_portmaster
            #     __update_npm
            #     __update_gems
            #     __update_pip
            else
                __freebsd_portsnap
                __freebsd_ezjail_ports
                __freebsd_pkg
                __update_node_packages
                # __update_gems
                # __update_pip
            end
		case '*'
			printf "No update function for %s yet." (uname)
	end
end
