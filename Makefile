SYSNAME:=${shell uname}
SYSNAME!=uname
INSTALLPREFIX:=/usr/local
export INSTALLPREFIX

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
	make -C libspfs install
	make -C libspclient install
