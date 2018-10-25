#!/usr/bin/env fish

function brewup
	brew -v update; brew upgrade; brew cask upgrade; brew cleanup; brew prune; brew doctor; brew cask doctor
end
