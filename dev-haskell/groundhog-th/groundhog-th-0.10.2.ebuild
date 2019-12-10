# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Type-safe datatype-database mapping library"
HOMEPAGE="http://hackage.haskell.org/package/groundhog-th"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/groundhog-0.10:=[profile?] <dev-haskell/groundhog-0.11:=[profile?]
	dev-haskell/libyaml:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	>=dev-haskell/unordered-containers-0.1.3:=[profile?]
	>=dev-haskell/yaml-0.11:=[profile?] <dev-haskell/yaml-0.12:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
