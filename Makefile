CC=gcc
CFLAGS= -Wall

# the -Wall enables all basic warnings.
# the -1X11 is required for compiling any x11 app

make: xrectsel.c
	$(CC) $(CFLAGS) -o drawrect xrectsel.c -lX11
clean:
	rm drawrect
install:
	cp drawrect ~/.local/bin/drawrect
	cp drawterm ~/.local/bin/drawterm
