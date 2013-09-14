# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="SVG backend for diagrams drawing EDSL."
HOMEPAGE="http://projects.haskell.org/diagrams/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-svg-0.3.3:=[profile?]
	>=dev-haskell/cmdargs-0.6:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	dev-haskell/colour:=[profile?]
	>=dev-haskell/diagrams-core-0.7:=[profile?] <dev-haskell/diagrams-core-0.8:=[profile?]
	>=dev-haskell/diagrams-lib-0.7.1:=[profile?] <dev-haskell/diagrams-lib-0.8:=[profile?]
	>=dev-haskell/monoid-extras-0.3:=[profile?] <dev-haskell/monoid-extras-0.4:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/split-0.1.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/vector-space-0.7:=[profile?] <dev-haskell/vector-space-0.9:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
"
