include config.mk

OBJECTS = donut.o

all : donut

donut.o :
	$(CC) $(CFLAGS) -c donut.c
donut : $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o donut $(LDFLAGS)


install : donut
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f donut $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/donut

uninstall :
	rm -rf $(DESTDIR)$(PREFIX)/bin/donut

clean :
	rm -rf donut
