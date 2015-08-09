# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib haddock hoogle hscolour test-suite" # profile is not supported
inherit haskell-cabal

DESCRIPTION="Extract the heap representation of Haskell values and thunks"
HOMEPAGE="http://hackage.haskell.org/package/ghc-heap-view"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fails on -O2 as heap layout changes

RDEPEND="dev-haskell/binary:=
	dev-haskell/transformers:=
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
