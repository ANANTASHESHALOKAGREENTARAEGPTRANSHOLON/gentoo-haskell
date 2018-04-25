# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999
#hackport: flags: -old-base

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Top-level package for the Snap Web Framework"
HOMEPAGE="http://snapframework.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/clientsession-0.8:=[profile?] <dev-haskell/clientsession-0.10:=[profile?]
	>=dev-haskell/configurator-0.1:=[profile?] <dev-haskell/configurator-0.4:=[profile?]
	>=dev-haskell/directory-tree-0.10:=[profile?] <dev-haskell/directory-tree-0.13:=[profile?]
	>=dev-haskell/dlist-0.5:=[profile?] <dev-haskell/dlist-0.9:=[profile?]
	>=dev-haskell/hashable-1.2.0.6:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/heist-1.0:=[profile?]
	>=dev-haskell/lens-3.7.6:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/map-syntax-0.2:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/mwc-random-0.8:=[profile?] <dev-haskell/mwc-random-0.14:=[profile?]
	>=dev-haskell/pwstore-fast-2.2:=[profile?] <dev-haskell/pwstore-fast-2.5:=[profile?]
	>=dev-haskell/snap-core-1.0:=[profile?] <dev-haskell/snap-core-1.1:=[profile?]
	>=dev-haskell/snap-server-1.0:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/xmlhtml-0.1:=[profile?] <dev-haskell/xmlhtml-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/async-2.0.1.5
		>=dev-haskell/http-streams-0.7.1.1 <dev-haskell/http-streams-0.9
		>=dev-haskell/hunit-1.2.5.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.4.2
		>=dev-haskell/smallcheck-1.1.1 <dev-haskell/smallcheck-1.2
		dev-haskell/syb
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3.0.1 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.3.0.3 <dev-haskell/test-framework-quickcheck2-0.4
		>=dev-haskell/test-framework-smallcheck-0.2 <dev-haskell/test-framework-smallcheck-0.3 )
"

src_prepare() {
	default

	cabal_chdeps \
		'aeson                     >= 0.6      && < 1.3' 'aeson                     >= 0.6' \
		'async                      >= 2.0.1.5  && < 2.2' 'async                      >= 2.0.1.5' \
		'QuickCheck                 >= 2.4.2    && < 2.11' 'QuickCheck                 >= 2.4.2' \
		'lens                      >= 3.7.6    && < 4.16' 'lens                      >= 3.7.6' \
		'snap-server               >= 1.0      && < 1.1' 'snap-server               >= 1.0' \
		'heist                     >= 1.0      && < 1.1' 'heist                     >= 1.0' \
		'map-syntax                >= 0.2      && < 0.3' 'map-syntax                >= 0.2'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-old-base
}
