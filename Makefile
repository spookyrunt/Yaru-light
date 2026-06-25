VERSION := $(shell git rev-parse --short HEAD)
OUT := Yaru-light-$(VERSION).tar.gz
TMP := /tmp/$(OUT)

package:
	tar --exclude=1.png --exclude=2.png --exclude=readme.md \
	    --exclude=.git --exclude=Makefile \
	    --exclude="Yaru-light-*.tar.gz" \
	    -czf $(TMP) .
	mv $(TMP) $(OUT)
