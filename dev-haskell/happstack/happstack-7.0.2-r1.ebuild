# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.2.9999
#hackport: flags: +base4,-tests

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The haskell application server stack + code generation"
HOMEPAGE="http://happstack.com"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/happstack-server-7.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
src_prepare() {
	default

	cabal_chdeps \
		'happstack-server >= 7.0 && < 7.4' 'happstack-server >= 6.0'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=base4 \
		--flag=-tests
}
