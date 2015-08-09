# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HaTeX"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The Haskell LaTeX library"
HOMEPAGE="http://wrongurl.net/haskell/HaTeX"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/matrix:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	>=dev-haskell/text-0.11.2.3:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/wl-pprint-extras-3.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

S="${WORKDIR}/${MY_P}"
