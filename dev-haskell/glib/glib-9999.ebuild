# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.5.9999

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit git-2 haskell-cabal

DESCRIPTION="Binding to the GLIB library for Gtk2Hs"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
EGIT_REPO_URI="https://github.com/gtk2hs/gtk2hs.git"

EGIT_SOURCEDIR="${WORKDIR}/${P}"
S="${WORKDIR}/${P}/${PN}"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+closure_signals"

RDEPEND=">=dev-haskell/text-1.0.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/utf8-string-0.2:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-7.9.1:=
	dev-libs/glib:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/gtk2hs-buildtools-0.13.0.3:0=
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag closure_signals closure_signals)
}
