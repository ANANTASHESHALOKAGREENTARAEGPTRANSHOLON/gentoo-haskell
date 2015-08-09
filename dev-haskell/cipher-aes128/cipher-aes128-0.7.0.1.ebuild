# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="AES and common modes using AES-NI when available"
HOMEPAGE="https://github.com/TomMD/cipher-aes128"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-haskell/cereal:=[profile?]
	>=dev-haskell/crypto-api-0.13:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	test? ( dev-haskell/crypto-api-tests:=[profile?]
		dev-haskell/test-framework:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test test)
}
