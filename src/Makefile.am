bin_PROGRAMS = doc-scan

doc_scan_SOURCES = \
	config.vapi \
	book.vala \
	book-view.vala \
	colord.vapi \
	jpeglib.vapi \
	page.vala \
	page-view.vala \
	sane.vapi \
	doc-scan.vala \
	scanner.vala \
	ui.vala \
	autosave-manager.vala

doc_scan_VALAFLAGS = \
	--pkg=zlib \
	--pkg=gudev-1.0 \
	--pkg=gio-2.0 \
	--pkg=gtk+-3.0 \
	--pkg=sqlite3 \
	--target-glib 2.32

if HAVE_COLORD
doc_scan_VALAFLAGS += -D HAVE_COLORD
endif

doc_scan_CFLAGS = \
	$(SIMPLE_SCAN_CFLAGS) \
	$(COLORD_CFLAGS) \
	$(WARN_CFLAGS) \
	-DVERSION=\"$(VERSION)\" \
	-DGETTEXT_PACKAGE=\"$(GETTEXT_PACKAGE)\" \
	-DLOCALE_DIR=\"$(localedir)\" \
	-DUI_DIR=\"$(datadir)/doc-scan/\" \
	-DICON_DIR=\"$(datadir)/doc-scan/icons\" \
	-DGCONF_DIR=\"/apps/doc-scan\" \
	-DSIMPLE_SCAN_BINARY=\"doc-scan\"

doc_scan_LDADD = \
	$(SIMPLE_SCAN_LIBS) \
	$(COLORD_LIBS) \
	-lsane \
	-ljpeg \
	-lm

CLEANFILES = \
	$(patsubst %.vala,%.c,$(filter %.vala, $(SOURCES))) \
	*_vala.stamp

DISTCLEANFILES = \
	Makefile.in
