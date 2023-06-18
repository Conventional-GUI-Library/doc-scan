SUBDIRS = icons

uidir = $(datadir)/doc-scan
ui_DATA = doc-scan.ui

utilitiesdir = $(datadir)/applications
utilities_in_files = doc-scan.desktop.in
utilities_DATA = $(utilities_in_files:.desktop.in=.desktop)
@INTLTOOL_DESKTOP_RULE@

gsettings_SCHEMAS = org.tga.DocScan.gschema.xml
@INTLTOOL_XML_NOMERGE_RULE@
@GSETTINGS_RULES@

man1_MANS = doc-scan.1

EXTRA_DIST = $(ui_DATA) $(utilities_in_files) org.tga.DocScan.gschema.xml.in $(man1_MANS)

DISTCLEANFILES = \
	Makefile.in \
	$(schema_DATA) \
	$(utilities_DATA) \
	$(gsettings_SCHEMAS)
