#!/bin/sh

# A script to download all the emacs packages that are
# 1/ not forked in github
# 2/ not available via the package archives
git svn clone --stdlayout --revision 665 http://yasnippet.googlecode.com/svn/ yasnippet
