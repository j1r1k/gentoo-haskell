# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin" # broken now: test-suite"
inherit eutils git-2 haskell-cabal

MY_PN="LambdaWars"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="RoboWars for London Haskell User Group."
HOMEPAGE="https://github.com/andreyLevushkin/LambdaWars"
EGIT_REPO_URI="git://github.com/andreyLevushkin/LambdaWars.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-haskell/ac-angle
	dev-haskell/ac-vector
	dev-haskell/ac-vector-fancy
	>=dev-haskell/cabal-1.8
	dev-haskell/fclabels
	dev-haskell/glut
	dev-haskell/monad-loops
	dev-haskell/monadrandom
	dev-haskell/mtl
	dev-haskell/opengl
	dev-haskell/random
	>=dev-lang/ghc-7.4.1
"
RESTRICT=test # broken
#	test? ( dev-haskell/blaze-svg
#		dev-haskell/hunit
#		dev-haskell/quickcheck
#		>=dev-haskell/snap-core-0.9.2.2 <dev-haskell/snap-core-0.9.5
#		>=dev-haskell/snap-server-0.9.2.4 <dev-haskell/snap-server-0.9.5
#		dev-haskell/test-framework
#		dev-haskell/test-framework-hunit
#		dev-haskell/test-framework-quickcheck2 )
#"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-opengl-2.9.patch

	CABAL_FILE=${S}/${MY_PN}.cabal cabal_chdeps \
		'snap-core ==0.9.2.2' 'snap-core >=0.9.2.2 && < 0.9.5' \
		'snap-server ==0.9.2.4' 'snap-server >=0.9.2.4 && < 0.9.5' \
		'bytestring ==0.9.2.1' 'bytestring'
}
