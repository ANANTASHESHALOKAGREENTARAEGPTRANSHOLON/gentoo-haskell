# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the Webkit library"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.13.0.0:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	>=dev-haskell/glib-0.13.1.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/gtk-0.13.0.0:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/pango-0.13.0.0:=[profile?] <dev-haskell/pango-0.14:=[profile?]
	>=dev-haskell/text-1.0.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	net-libs/webkit-gtk:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.0
	>=dev-haskell/gtk2hs-buildtools-0.13.0.2:0=
	virtual/pkgconfig
"

src_prepare() {
	# workaround for module order
	cabal_chdeps \
		'other-modules:' 'exposed-modules:'
	# fix build with gcc 5.1.0 and later https://github.com/gtk2hs/gtk2hs/issues/104
	sed -e 's@gccProg, "--cppopts=-E"@gccProg, "--cppopts=-E", "--cppopts=-P"@' \
		-i Gtk2HsSetup.hs || die
}

src_configure() {
	haskell-cabal_src_configure \
		--constraint="Cabal == $(cabal-version)"
}
