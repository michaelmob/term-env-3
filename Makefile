# vim: ts=2
check:
	./scripts/check-dependencies

install: check
	# sudo apt install git make gawk
	./scripts/install-blesh
	./scripts/install-fzf
	./scripts/install-nvim-appimage
	./scripts/install-tmux-appimage

run:
	./scripts/run-me.bash

clean:
	rm -rf ./bin
	rm -rf ./squashfs-root

full-clean: clean
	rm -rf ./squashfs-root
	#rm -rf ~/.local/share/nvim/site/{plugged,autoload}
	#rm -rf ~/.local/share/blesh
