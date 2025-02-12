# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Auto generate hie-bios cradles & hie.yaml"
HOMEPAGE="https://github.com/Avi-D-coder/implicit-hie#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"
IUSE="executable"

PATCHES=( "${FILESDIR}/${PN}-0.1.2.5-add-executable-flag.patch" )

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?]
	>=dev-haskell/filepattern-0.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/yaml-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec
		dev-haskell/hspec-attoparsec )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable)
}
