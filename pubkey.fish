#!/usr/bin/env fish
# reads a users public key and copies it to the keyboard

function pubkey
    cat ~/.ssh/id_rsa.pub | pbcopy; and echo '=> Public key copied to pasteboard.'
end
