# vimsdot
This is a tool that allows the usage of custom commands on graphviz. In the same time as it allows to see a live update of the graphviz file.

It is a very simple tool, made only with shellscripts.
You edit a .sdot file, whenever you save the file, **sed** will be called on that file, and translate your custom commands into the right graphviz syntax.


## Requirements
	- graphviz 
	- inotify-tools 

## Installation
	simply enough, just run:
	>sudo make

## Configuration
	Edit the files in /etc/vimsdot/
	You can change the editor to use emacs, nano or whatever else you like
	AWK or the like can be used instead of sed, but it might need a little tweaking...

## Usage 
	>vimsdot [{GV-FILE | SDOT-FILE}] [SEDSCRIPT] [DOTCMD]
	where:
	- GV-FILE is the graphviz file
	- SDOT-FILE is the GV-FILE with a .sdot extension
	- SEDSCRIPT is the sed script 
	- DOTCMD can be dot, neato, fdp... 
	
	the arguments are optional and it will be populated with the contents of /etc/vimsdot folder
		
	

	
	
