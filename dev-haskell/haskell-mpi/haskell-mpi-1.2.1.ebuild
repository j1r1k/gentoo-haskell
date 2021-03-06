# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Distributed parallel programming in Haskell using MPI"
HOMEPAGE="https://github.com/bjpop/haskell-mpi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cereal:=[profile?]
		dev-haskell/extensible-exceptions:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		virtual/mpi"
DEPEND="${RDEPEND}
		dev-haskell/c2hs
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}"/${P}-ghc-7.6.patch
	"${FILESDIR}"/${P}-ghc-7.8.patch)
