
download:
	rm -f winbox.exe
	sh ./downloadExe.sh

deb:
	debuild -us -uc
