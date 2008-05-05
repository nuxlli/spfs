SYSNAME:=${shell uname}
SYSNAME!=uname
HFILES=../include/spfs.h spfsimpl.h
CFLAGS=-Wall -g -I ../include -D$(SYSNAME)

ifeq ($(SYSNAME), SunOS)
	CFLAGS += -D_POSIX_PTHREAD_SEMANTICS 
endif

LIBFILES=\
	conn.o\
	error.o\
	fcall.o\
	fidpool.o\
	file.o\
	fmt.o\
	np.o\
	poll.o\
	pvusers.o\
	socksrv.o\
	srv.o\
	user.o\
	uxusers.o\

libspfs.a: $(LIBFILES)
	ar rc libspfs.a $(LIBFILES)
	ranlib libspfs.a

install:
	mkdir -p $(INSTALLPREFIX)/include
	mkdir -p $(INSTALLPREFIX)/lib
	cp ../include/spfs.h $(INSTALLPREFIX)/include
	cp libspfs.a $(INSTALLPREFIX)/lib

clean:
	rm -f *.o *.a *~ core.*

$(LIBFILES): Makefile $(HFILES)

%.o: %.c 
	$(CC) $(CFLAGS) -c $*.c
