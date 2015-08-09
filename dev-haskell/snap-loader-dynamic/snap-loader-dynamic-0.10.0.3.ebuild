# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Snap: A Haskell Web Framework: dynamic loader"
HOMEPAGE="http://snapframework.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/directory-tree-0.10:=[profile?] <dev-haskell/directory-tree-0.13:=[profile?]
	>=dev-haskell/hint-0.3.3.1:=[profile?] <dev-haskell/hint-0.5:=[profile?]
	>dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/old-time-1.0:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	>=dev-haskell/snap-core-0.9:=[profile?] <dev-haskell/snap-core-0.10:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
