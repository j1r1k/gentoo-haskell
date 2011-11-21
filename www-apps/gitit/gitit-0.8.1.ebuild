# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit base haskell-cabal

DESCRIPTION="Wiki using happstack, git or darcs, and pandoc."
HOMEPAGE="http://github.com/jgm/gitit/tree/master"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cgi
		<dev-haskell/configfile-1.2
		<dev-haskell/feed-0.4
		<dev-haskell/filestore-0.5
		dev-haskell/ghc-paths
		<dev-haskell/happstack-server-6.4
		<dev-haskell/happstack-util-6.2
		>=dev-haskell/highlighting-kate-0.2.7.1
		<dev-haskell/hslogger-1.2
		=dev-haskell/hstringtemplate-0.6*
		<dev-haskell/http-4000.2
		>=dev-haskell/json-0.4
		dev-haskell/mtl
		<dev-haskell/network-2.4
		>=app-text/pandoc-1.8
		>=dev-haskell/pandoc-types-1.8
		dev-haskell/parsec
		>=dev-haskell/recaptcha-0.1
		dev-haskell/safe
		<dev-haskell/sha-1.6
		<dev-haskell/time-1.3
		=dev-haskell/url-2.1*
		=dev-haskell/utf8-string-0.3*
		dev-haskell/xhtml
		>=dev-haskell/xml-1.3.5
		<dev-haskell/xss-sanitize-0.4
		=dev-haskell/zlib-0.5*
		=dev-haskell/text-0.11*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}/${P}-ghc-7.2.patch")

src_prepare() {
	base_src_prepare
	sed -e 's@json >= 0.4 && < 0.5@json >= 0.4 \&\& < 0.6@' \
		-e 's@happstack-server >= 6.0 && < 6.3@happstack-server >= 6.0 \&\& < 6.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
