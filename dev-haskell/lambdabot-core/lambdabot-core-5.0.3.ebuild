# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lambdabot core functionality"
HOMEPAGE="http://haskell.org/haskellwiki/Lambdabot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5:=[profile?]
	>=dev-haskell/dependent-map-0.1:=[profile?] <dev-haskell/dependent-map-0.2:=[profile?]
	>=dev-haskell/dependent-sum-0.2:=[profile?] <dev-haskell/dependent-sum-0.3:=[profile?]
	>=dev-haskell/dependent-sum-template-0.0.0.1:=[profile?]
	>=dev-haskell/edit-distance-0.2:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?]
	>=dev-haskell/hslogger-1.2.1:=[profile?]
	>=dev-haskell/http-4000:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/network-2.3.0.13:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/random-fu-0.2:=[profile?]
	>=dev-haskell/random-source-0.3:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?]
	>=dev-haskell/safesemaphore-0.9:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
