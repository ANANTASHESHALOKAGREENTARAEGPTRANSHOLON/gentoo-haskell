# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Ways to write a file cautiously, reducing e.g. the chances of data loss due to crashes"
HOMEPAGE="http://hackage.haskell.org/package/cautious-file"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

RESTRICT=test # requires library already already installed

src_prepare() {
	cabal_chdeps \
		'filepath >= 1.2, filepath < 1.4' 'filepath >= 1.2'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=posix
}
