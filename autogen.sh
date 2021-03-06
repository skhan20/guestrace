#!/bin/sh

[ -d m4 ] || mkdir m4
gtkdocize || exit 1
aclocal || exit 1
autoconf || exit 1
autoheader || exit 1
libtoolize --force || glibtoolize --force || exit 1
automake -a || exit 1
./configure $* || exit 1

exit 0
