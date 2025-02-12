# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Functional reactive programming library"
HOMEPAGE="https://github.com/esoeylemez/netwire"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parallel-3.2:=[profile?] <dev-haskell/parallel-4:=[profile?]
	>=dev-haskell/profunctors-4.3:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-2:=[profile?]
	>=dev-haskell/semigroups-0.15:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
