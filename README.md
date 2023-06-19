# doc-scan
A SANE frontend for MATE, XFCE and such.

## Building and installing
First, you need to generate the build files.
```
$ ./autogen.sh
```

Once generated, you can simply run make to build doc-scan.
```
$ make
```

When built, you can use the "install" target to install doc-scan onto your system.
```
# make install
```

## Dependencies
This project depends on:
- [`Vala (valac)`](https://vala.dev/) 
- [`GTK+ 3.0 (libgtk-3-dev)`](https://www.gtk.org/)
- [`GUdev (libgudev-1.0-dev)`](https://gitlab.gnome.org/GNOME/libgudev/)
- [`GnomeCommon (gnome-common)`](https://wiki.gnome.org/Projects/GnomeCommon)
- [`Yelp Tools (yelp-tools)`](http://yelp.io/tools/)
- [`zlib (zlib1g-dev)`](https://www.zlib.net/)
- [`GNU gettext (gettext)`](https://www.gnu.org/software/gettext/)


Optionally, this project can take advantage of:
- [`colord (libcolord-dev)`](https://www.freedesktop.org/software/colord/)

