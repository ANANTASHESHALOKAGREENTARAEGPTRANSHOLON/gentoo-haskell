# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HaskellDB support for HDBC"
HOMEPAGE="https://github.com/m4dc4p/haskelldb"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/convertible-1.0.1:=[profile?]
		<dev-haskell/convertible-2:=[profile?]
		>=dev-haskell/haskelldb-2.2:=[profile?]
		<dev-haskell/haskelldb-3:=[profile?]
		=dev-haskell/hdbc-2*:=[profile?]
		>=dev-haskell/mtl-1:=[profile?]
		<dev-haskell/mtl-3:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare () {
	sed -e 's@module Database.HaskellDB.HDBC (hdbcConnect) where@module Database.HaskellDB.HDBC (hdbcConnect, mkDatabase) where@' \
		-i "${S}/Database/HaskellDB/HDBC.hs" || die "could not export mkDatabase"
}
