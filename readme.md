# My MacOS fish functions

#### A bunch of fish functions I made as basic shortcuts, wrappers and aliases for mac!

For more information you can go [here](https://fishshell.com) to learn more about the Fish Shell! another good resource I've used a lot is [The Fish Shell Cookbook](https://github.com/jorgebucaran/fish-shell-cookbook)! If you have any ideas, input, or fixes, please let me know!

## The Functions:

- afk.fish
- airlink.fish
- airscan.fish
- brewup.fish
- dscleanup.fish
- fastbackup.fish
- flushdns.fish
- fucktrash.fish
- fuckyou.fish
- lscleanup.fish
- manp.fish
- shutitdown.fish
- spotoff.fish
- spoton.fish
- sysupdater.fish
- tmstatus.fish
- yt.fish
- ytx.fish

### afk.fish

A command to quickly lock your screen when going AFK (away from keyboard)

### airlink.fish

A quick easy script to link the hidden Airport command to `usr/local/sbin` for a new setup, user, etc...

### airscan.fish

A wrapper to use the airport command to perform a scan.

    airport -s

### brewup.fish

A wrapper to quickly update and upgrade homebrew. Command consists of:

    brew -v update; brew -v upgrade; brew cask upgrade; brew cleanup; brew doctor;

### dscleanup.fish

Recursievely delets .DS_Store files.

### fastbackup.fish

A command to temporarily enable quicker backups! Basically, just a wrapper for:

    sudo sysctl debug.lowpri_throttle_enabled=0

**Note: must be have admin access**

[source](https://lifehacker.com/temporarily-speed-up-a-time-machine-backup-with-a-termi-1785213919)

### flusdns.fish

A fish function to clear your DNS cache from the CLI!

### fucktrash.fish

Say "_fuck you!_" to your .Trash folders!

### fuckyou.fish

Just a vulgar, and easy to remember, wrapper/alias for `sudo rm -Rf`.

### lscleanup.fish

Cleans up launch services to remove doubles from the "open with" menu.

### manp.fish

Opens a man page in Preview.app to create a PDF of said man page.

### pubkey.fish

reads a users public key and copies it to the keyboard

### shutitdown.fish

Dealbreaker! Shut it down!

### spotoff.fish

Toggle Spotlight indexing off for a volume.

### spoton.fish

Toggle Spotlight indexing on for a volume.

### sysupdater.fish

A way to update various software packages, all from one command!

**note: some may still be commented as I dont use them frequently**

### tmstatus.fish

A wrapper for the undocumented `tmutil` command `tmutil status`.

### yt.fish

Basically just an abbreviation for `youtube-dl`.

### ytx.fish

Another abbreviation for `youtube-dl` but with the `-x` argument to extract audio.

---

Thats about it for now! Thanks to [@herrbischoff](https://github.com/herrbischoff/fish-osx) for a lot of the inspiration for this repo, and also the awesome dotfile community on github!
