.PHONY : echo-client echo-server clean install uninstall android-install android-uninstall

all: echo-client echo-server

echo-client:
	cd echo-client; make; cd ..

echo-server:
	cd echo-server; make; cd ..

clean:
	cd echo-client; make clean; cd ..
	cd echo-server; make clean; cd ..

install:
	sudo cp bin/echo-client /usr/sbin
	sudo cp bin/echo-server /usr/sbin

uninstall:
	sudo rm /usr/sbin/echo-client /usr/sbin/echo-server

