# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A desktop bar similar to xmobar, but with more GUI"
HOMEPAGE="http://github.com/travitch/taffybar"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND="dev-haskell/cairo:=[profile?]
	>=dev-haskell/dbus-0.10.1:=[profile?] <dev-haskell/dbus-1.0:=[profile?]
	>=dev-haskell/dyre-0.8.6:=[profile?]
	>=dev-haskell/enclosed-exceptions-1.0.0.1:=[profile?]
	>=dev-haskell/gtk-0.12.1:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?]
	>=dev-haskell/gtk-traymanager-0.1.2:=[profile?] <dev-haskell/gtk-traymanager-0.2:=[profile?]
	dev-haskell/hstringtemplate:=[profile?]
	dev-haskell/http:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-1:=[profile?]
	>=dev-haskell/split-0.1.4.2:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-haskell/x11-1.5.0.1:=[profile?]
	dev-haskell/xdg-basedir:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/gtk+:2
	x11-wm/xmonad:=[profile?]
	x11-wm/xmonad-contrib:=[profile?]
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-3:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?]
			<dev-haskell/network-uri-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	virtual/pkgconfig
"
RDEPEND+=" sys-apps/dbus
		sys-power/upower-pm-utils"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
