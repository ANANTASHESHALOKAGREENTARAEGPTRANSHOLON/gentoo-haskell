# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -allow-unsafe-gc,-apicheck,-export-dynamic,-lua_32bits,+pkgconfig,+system-lua
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lua, an embeddable scripting language"
HOMEPAGE="https://hslua.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+allow-unsafe-gc apicheck +export-dynamic +hardcode-reg-keys lua-32bits"

RDEPEND=">=dev-lang/ghc-8.4.3:=
	>=dev-lang/lua-5.3 <dev-lang/lua-5.4
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-allow-unsafe-gc \
		--flag=-apicheck \
		--flag=-export-dynamic \
		$(cabal_flag hardcode-reg-keys hardcode-reg-keys) \
		--flag=-lua_32bits \
		--flag=pkg-config \
		--flag=system-lua
}
