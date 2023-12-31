#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="doc_scan"
REQUIRED_AUTOMAKE_VERSION=1.7

(test -f $srcdir/configure.ac \
  && test -d $srcdir/src) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level doc-scan directory"
    exit 1
}

which gnome-autogen.sh || {
    echo "You need to install gnome-common from the gnome CVS"
    exit 1
}
USE_gnome2_MACROS=1 USE_COMMON_DOC_BUILD=yes . gnome-autogen.sh
