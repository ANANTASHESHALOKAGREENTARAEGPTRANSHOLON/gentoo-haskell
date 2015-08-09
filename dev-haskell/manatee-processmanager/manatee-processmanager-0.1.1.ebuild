# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Process manager extension for Manatee"
HOMEPAGE="http://hackage.haskell.org/package/manatee-processmanager"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary
		=dev-haskell/dbus-client-0.4*
		dev-haskell/derive
		>=dev-haskell/gtk-0.12.0
		>=dev-haskell/manatee-core-0.1.1
		>=dev-haskell/proc-0.0.8
		>=dev-haskell/stm-2.1.2.0
		>=dev-haskell/text-0.7.1.0
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@dbus-client >= 0.3 && < 0.4@dbus-client >= 0.3 \&\& < 0.5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dbus-client dependency"
}
