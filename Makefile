SYSNAME:=${shell uname}
SYSNAME!=uname

all: 
	make -C libspfs
	make -C libspclient
	make -C fs

clean:
	rm -f *~ include/*~
	make -C libspfs clean
	make -C libspclient clean
	make -C fs clean

install:
	cp include/spfs.h /usr/local/include
	cp libspfs/libspfs.a /usr/local/lib
