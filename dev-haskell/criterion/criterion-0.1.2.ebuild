# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Benchmarking, Performance, Testing"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/criterion"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.2
		<dev-haskell/chart-0.12
		dev-haskell/data-accessor
		dev-haskell/filepath
		dev-haskell/parallel
		dev-haskell/parsec
		>=dev-haskell/statistics-0.3.4
		dev-haskell/time
		dev-haskell/uvector
		>=dev-haskell/uvector-algorithms-0.2"
