# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wrapper around the pdfinfo command"
HOMEPAGE="https://github.com/chrisdone/pdfinfo"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/old-locale:=[profile?]
	dev-haskell/process-extras:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/time-locale-compat:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	|| ( ( >=dev-haskell/mtl-1.1:=[profile?] <dev-haskell/mtl-2.1:=[profile?] )
		>=dev-haskell/mtl-2.1.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
