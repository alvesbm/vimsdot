
default: install

install: inotify.has
	mkdir -p /etc/vimsdot
	cp etc/* /etc/vimsdot/
	cp bin/vimsdot /usr/bin/vimsdot
	chmod +x /usr/bin/vimsdot
	rm inotify.has

uninstall:
	rm -rf /etc/vimsdot
	rm -f /usr/bin/vimsdot

inotify.has:
	which inotifywait && touch inotify.has
