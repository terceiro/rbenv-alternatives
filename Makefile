PACKAGE = rbenv-alternatives
VERSION = $(shell ./bin/rbenv-alternatives --version)
TARBALL = $(PACKAGE)-$(VERSION).tar.gz
DEBIAN_TARBALL = rbenv_$(VERSION).orig-$(PACKAGE).tar.gz

dist: $(TARBALL)

debian-dist: $(DEBIAN_TARBALL)

$(TARBALL):
	git archive --prefix=$(PACKAGE)-$(VERSION)/ HEAD | gzip - > $(TARBALL)

$(DEBIAN_TARBALL): $(TARBALL)
	ln $(TARBALL) $(DEBIAN_TARBALL)

clean:
	$(RM) $(TARBALL) $(DEBIAN_TARBALL)
