#!/usr/bin/env fish

function brewup --description 'updates, upgrades, cleans-up, prunes and performs a checkup of brew'
	brew -v update; brew -v upgrade; brew cask upgrade; brew cleanup; brew doctor; brew cask doctor;
end
