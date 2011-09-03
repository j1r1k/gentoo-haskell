# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Stick your haskell variables into css at compile time."
HOMEPAGE="http://www.yesodweb.com/book/templates"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="<dev-haskell/parsec-4
		=dev-haskell/shakespeare-0.10*
		<dev-haskell/text-0.12
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			=dev-haskell/hspec-0.6*
		)
		"

src_prepare() {
	cp -r "${FILESDIR}/${P}/"* "${S}"/
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
