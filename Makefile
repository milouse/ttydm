DEST=
PKGNAME=ttydm
PKGVER=0.1

all: install

install:
	install -dm 755 $(DEST)/usr/bin
	install -dm 755 $(DEST)/etc/profile.d
	install -dm 755 $(DEST)/etc/skel

	install -Dm 755 tty-dm       $(DEST)/usr/bin/tty-dm
	install -Dm 755 zzz-ttydm.sh $(DEST)/etc/profile.d/zzz-ttydm.sh
	install -Dm 644 ttydm_rc.sh  $(DEST)/etc/skel/ttydm_rc.sh

uninstall:
	rm $(DEST)/usr/bin/tty-dm
	rm $(DEST)/etc/skel/ttydm_rc.sh
	rm $(DEST)/etc/profile.d/zzz-ttydm.sh
