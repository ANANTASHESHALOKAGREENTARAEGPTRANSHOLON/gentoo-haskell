# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin"
inherit eutils haskell-cabal

DESCRIPTION="A small program for counting the comments in haskell source"
HOMEPAGE="http://hackage.haskell.org/package/happraise"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	dev-haskell/cabal
"
src_prepare() {
	epatch "${FILESDIR}"/${P}-base-4.patch
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}
