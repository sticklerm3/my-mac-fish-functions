#!/usr/bin/env fish

function afk --description 'locks screen when going AFK'
  /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
end
