# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

MY_PN="Etherbunny"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A network analysis toolkit for Haskell"
HOMEPAGE="http://etherbunny.anytini.com/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/pcap:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		net-libs/libpcap"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-base-4.patch

	CABAL_FILE=${MY_PN}.cabal cabal_chdeps \
		'base, haskell98' 'base'
}
