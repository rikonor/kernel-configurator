INSTALL_DIR ?= /usr/local/bin

all: image install

image:
	docker build \
		-t kernel-configurator \
		-f Dockerfile \
			.

install:
	sudo cp kcfg $(INSTALL_DIR)/kcfg
