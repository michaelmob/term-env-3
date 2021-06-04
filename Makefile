install:
	~/.michael/scripts/install-nvim-appimage
	~/.michael/scripts/install-tmux-appimage
	~/.michael/scripts/install-blesh
	~/.michael/scripts/install-hstr

clean:
	rm -rf ~/.michael/tmp
	rm -rf ~/.michael/bin
	rm -rf ~/.michael/squashfs-root/
