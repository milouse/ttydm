DEST=
PKGNAME=ttydm
PKGVER=0.1

all: install

install:
	install -dm 755 $(DEST)/usr/bin
	install -dm 755 $(DEST)/etc/profile.d
	install -dm 755 $(DEST)/usr/lib/ttydm

	install -Dm 755 tty-dm       $(DEST)/usr/bin/tty-dm
	install -Dm 755 zzz-ttydm.sh $(DEST)/etc/profile.d/zzz-ttydm.sh
	install -Dm 644 rc.sh        $(DEST)/usr/lib/ttydm/rc.sh
	install -Dm 644 xsession     $(DEST)/usr/lib/ttydm/xsession

uninstall:
	rm $(DEST)/usr/bin/tty-dm
	rm $(DEST)/usr/lib/ttydm/rc.sh
	rm $(DEST)/usr/lib/ttydm/xsession
	rm $(DEST)/etc/profile.d/zzz-ttydm.sh
