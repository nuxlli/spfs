SYSNAME:=${shell uname}
SYSNAME!=uname
HFILES=../include/spfs.h ../include/spclient.h spcimpl.h
CFLAGS=-Wall -g -I ../include

LIBFILES=\
	dirread.o\
	fid.o\
	fsys.o\
	mount.o\
	netmount.o\
	open.o\
	pool.o\
	poll.o\
	read.o\
	readnb.o\
	remove.o\
	stat.o\
	stat2wstat.o\
	walk.o\
	write.o\
	writenb.o\
	wstat.o\

libspclient.a: $(LIBFILES)
	ar rc libspclient.a $(LIBFILES)
	ranlib libspclient.a

install:
	mkdir -p $(INSTALLPREFIX)/include
	mkdir -p $(INSTALLPREFIX)/lib
	cp ../include/spclient.h $(INSTALLPREFIX)/include
	cp libspclient.a $(INSTALLPREFIX)/lib

clean:
	rm -f *.o *.a *~
	make -C examples clean

$(LIBFILES): Makefile $(HFILES)

%.o: %.c 
	$(CC) $(CFLAGS) -c $*.c
