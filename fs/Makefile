SYSNAME:=${shell uname}
SYSNAME!=uname
CFLAGS=-Wall -g -I ../include -DSYSNAME=$(SYSNAME)
LFLAGS=-L../libspfs -lspfs

FS=\
	ufs\

all: ufs

ufs: ufs.o
	$(CC) -o ufs $(CFLAGS) ufs.o $(LFLAGS) $(NPFS_LFLAGS)

clean:
	rm -f *.o *~ $(FS) core.*

%.c: ../include/spfs.h Makefile

$(FS): ../libspfs/libspfs.a

%.o: %.c 
	$(CC) $(CFLAGS) -c $*.c

