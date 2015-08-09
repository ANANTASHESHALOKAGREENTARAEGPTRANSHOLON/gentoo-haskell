# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile" # haddock hoogle hscolour" needs ImpredicativeTypes
inherit haskell-cabal

DESCRIPTION="Modular type class machinery for monad transformer stacks"
HOMEPAGE="http://github.com/duairc/layers"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	HCFLAGS+=" -XImpredicativeTypes"

	cabal_chdeps \
		'transformers > 0.2 && < 0.4' 'transformers > 0.2 && < 0.5'
}
