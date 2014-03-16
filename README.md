dot-files
=========
A collection of my .files for various programs.


Bashrc
======
Test


Conky
=====
An original conky configuration file. It originally started as the one that comes default with #!10 but I'm not sure there's a single line that's the same anymore. The idea is that it starts in a bar at the top of the screen where the title bar of the windows normally go. It's programmed to be ran from the ~/.config/conky/ directory and will not work unless that's where all these files are located. The start up command is then 'conky --config="$HOME/.config/conky/.bar_conkyrc"'.

It's specifically configured for my 1280x1024 monitor and so to get it working at other resolutions will require changing all the ${goto 170} numbers accordingly. It's also configured to say that any wired network it connects to is called HORNET, so just change that to a name of your liking.

Though it originated from the #! one it now depends on several other bash scripts that I've included here. These scripts manage colour changes within the conky dependent on system varables reaching dangerous levels. I've set this "dangerous level" to be 80% of the total by default be feel free to change that to your suiting.

Because the two output lines are incredibly long (no newlines as to keep the bar shape) I can put a part by part breakdown if required. Just file an issue and I'll get around to it.
