# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="PDF Content Type for Yesod"
HOMEPAGE="https://github.com/alexkyllo/yesod-content-pdf#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="doc hoogle hscolour profile"

RDEPEND="media-gfx/wkhtmltopdf:=
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/yesod-core:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		dev-haskell/hspec-expectations
		dev-haskell/utf8-string )
"
