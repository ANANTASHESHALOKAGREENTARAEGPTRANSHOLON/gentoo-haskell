# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -integer-simple
CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Numbers represented using scientific notation"
HOMEPAGE="https://github.com/basvandijk/scientific"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # circular depends

RDEPEND=">=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/integer-logarithms-1.0.3.1:=[profile?] <dev-haskell/integer-logarithms-1.1:=[profile?]
	>=dev-haskell/primitive-0.7.1.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
# 	test? ( >=dev-haskell/quickcheck-2.14.2
# 		>=dev-haskell/smallcheck-1.0
# 		>=dev-haskell/tasty-1.4.0.1
# 		>=dev-haskell/tasty-hunit-0.8
# 		>=dev-haskell/tasty-quickcheck-0.8
# 		>=dev-haskell/tasty-smallcheck-0.2 )
# "

src_configure() {
	haskell-cabal_src_configure \
		--flag=-integer-simple
}
