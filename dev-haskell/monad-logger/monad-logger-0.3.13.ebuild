# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A class of monads which can log messages"
HOMEPAGE="https://github.com/kazu-yamamoto/logger"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template_haskell"

RDEPEND="dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-extra-1.0:=[profile?] <dev-haskell/conduit-extra-1.3:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>=dev-haskell/fast-logger-2.0:=[profile?] <dev-haskell/fast-logger-2.3:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/resourcet-0.4:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/stm-chans:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag template_haskell template_haskell)
}