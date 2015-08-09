# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Convert between datatypes of the midi and the alsa packages"
HOMEPAGE="http://www.haskell.org/haskellwiki/MIDI"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildexamples"

RDEPEND="=dev-haskell/alsa-seq-0.6*:=[profile?]
		>=dev-haskell/data-accessor-0.2.1:=[profile?]
		<dev-haskell/data-accessor-0.3:=[profile?]
		>=dev-haskell/midi-0.2.1:=[profile?]
		<dev-haskell/midi-0.3:=[profile?]
		>=dev-haskell/utility-ht-0.0.5:=[profile?]
		<dev-haskell/utility-ht-0.1:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples)
}
