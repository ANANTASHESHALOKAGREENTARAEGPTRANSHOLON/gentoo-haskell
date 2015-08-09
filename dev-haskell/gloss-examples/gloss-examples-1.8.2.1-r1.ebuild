# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Examples using the gloss library"
HOMEPAGE="http://gloss.ouroborus.net"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/bmp-1.2 <dev-haskell/bmp-1.3
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/gloss-1.8.2 <dev-haskell/gloss-1.8.3
	>=dev-haskell/gloss-raster-1.8.2 <dev-haskell/gloss-raster-1.8.3
	>=dev-haskell/random-1.0 <dev-haskell/random-1.2
	>=dev-haskell/repa-3.2 <dev-haskell/repa-3.3
	>=dev-haskell/repa-algorithms-3.2 <dev-haskell/repa-algorithms-3.3
	>=dev-haskell/repa-io-3.2 <dev-haskell/repa-io-3.3
	>=dev-haskell/vector-0.10 <dev-haskell/vector-0.11
	>=dev-lang/ghc-7.8.2
"

src_prepare() {
	cabal_chdeps \
		'random          == 1.0.*' \
		'random   >= 1.0 && < 1.2' \
		'-fllvm -optlo-O3' ' '
}
