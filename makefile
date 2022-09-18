include config.mk

all : donut

donut : donut.c
	gcc donut.c -o donut -lm

install : donut
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f donut $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/donut

uninstall :
	rm -rf $(DESTDIR)$(PREFIX)/bin/donut

clean :
	rm -rf donut