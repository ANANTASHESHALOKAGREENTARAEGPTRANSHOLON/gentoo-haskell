# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

MY_PN="Shu-thing"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A vector shooter game"
HOMEPAGE="http://www.geocities.jp/takascience/index_en.html"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
	dev-haskell/glut
	>=dev-lang/ghc-6.10.4
"

S="${WORKDIR}/${MY_P}"
