# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An mtl compatible version of the Ghc-Api monads and monad-transformers"
HOMEPAGE="http://hub.darcs.net/jcpetruzza/ghc-mtl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/exceptions-0.6:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	dev-haskell/ghc-api:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"
