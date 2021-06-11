install:
	./scripts/install-nvim-appimage
	./scripts/install-tmux-appimage
	./scripts/install-blesh
	./scripts/install-hstr

run:
	./scripts/run-me.bash

clean:
	rm -rf ./bin
	rm -rf ./squashfs-root
