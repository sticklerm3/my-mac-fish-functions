#!/usr/bin/env fish

function airlink --description 'a fish function to link airport utility to /usr/local/sbin'
    sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/sbin/airport
end
