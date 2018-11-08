#!/usr/bin/env fish

function ytx --description 'an alias for youtube-dl with -x to extract medias audio'
	youtube-dl -x "$argv"
end
