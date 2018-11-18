#!/usr/bin/env fish

# Flush DNS cache
function flushdns
    switch (uname)
    case Darwin
        sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder -
    case '*'
        echo Mac OS X only command.
    end
end
