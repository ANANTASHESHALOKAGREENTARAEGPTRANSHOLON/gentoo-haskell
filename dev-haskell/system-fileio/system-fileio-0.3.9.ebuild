# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Consistent filesystem interaction across GHC versions"
HOMEPAGE="https://john-millikin.com/software/haskell-filesystem/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/system-filepath-0.3.1[profile?]
		<dev-haskell/system-filepath-0.5[profile?]
		>=dev-haskell/text-0.7.1[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/time-1.0[profile?]
		<dev-haskell/time-1.5[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}/${PN}-0.3.9-ghc-7.6.patch")
