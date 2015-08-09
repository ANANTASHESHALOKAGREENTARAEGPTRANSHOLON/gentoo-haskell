# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Generic basis for random number generators"
HOMEPAGE="https://github.com/mokus0/random-fu"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/flexible-defaults-0.0.0.2:=[profile?]
		dev-haskell/mersenne-random-pure64:=[profile?]
		dev-haskell/mwc-random:=[profile?]
		dev-haskell/random:=[profile?]
		=dev-haskell/stateref-0.3*:=[profile?]
		dev-haskell/th-extras:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		dev-haskell/syb:=[profile?]
		=dev-haskell/mtl-2*:=[profile?]
		"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
