all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -g -W -Wall -o $@ $<
clean:
	rm httpd
