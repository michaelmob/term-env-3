# vim: ts=2
check:

install:
	# sudo apt install git make gawk
	./scripts/check-dependencies
	./scripts/install-nvim-appimage
	./scripts/install-tmux-appimage
	./scripts/install-blesh
	./scripts/install-fzf
	./scripts/install-fuzzy-sys

run:
	./scripts/run-me.bash

clean:
	rm -rf ./bin
	rm -rf ./squashfs-root
