#!/usr/bin/env  fish

# thanks to github.com/paulirish for the trash function, I made it a bit more vulgar ;)
function fucktrash -d 'Empty the Trash on all mounted volumes and the main HDD.'
    sudo rm -rfv "/Volumes/*/.Trashes"
    grm -rf "~/.Trash/*"
end
