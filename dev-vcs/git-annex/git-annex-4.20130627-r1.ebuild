# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="manage files with git, without checking their contents into git"
HOMEPAGE="http://git-annex.branchable.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="android +assistant +dbus +dns doc +inotify +pairing +production +s3 +tdfa +testsuite +webapp +webdav +xmpp"

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/bloomfilter
		>=dev-haskell/cabal-1.8
		dev-haskell/dataenc
		dev-haskell/dlist
		dev-haskell/edit-distance
		dev-haskell/extensible-exceptions
		dev-haskell/hslogger
		dev-haskell/http
		dev-haskell/ifelse
		dev-haskell/json
		dev-haskell/missingh
		dev-haskell/monad-control
		dev-haskell/monadcatchio-transformers
		>=dev-haskell/mtl-2
		>=dev-haskell/network-2.0
		>=dev-haskell/quickcheck-2.1
		dev-haskell/random
		dev-haskell/safesemaphore
		dev-haskell/sha
		dev-haskell/text
		dev-haskell/unix-compat
		dev-haskell/utf8-string
		dev-haskell/uuid
		>=dev-lang/ghc-7.4.1
		android? ( dev-haskell/data-endian
		)
		assistant? ( dev-haskell/async
			>=dev-haskell/stm-2.3
		)
		dbus? ( >=dev-haskell/dbus-0.10.3
		)
		dns? ( dev-haskell/dns
		)
		inotify? ( dev-haskell/hinotify
		)
		pairing? ( dev-haskell/network-info
			dev-haskell/network-multicast
		)
		s3? ( dev-haskell/hs3
		)
		tdfa? ( dev-haskell/regex-tdfa
		)
		testsuite? ( dev-haskell/hunit
		)
		webapp? ( dev-haskell/aeson
			dev-haskell/blaze-builder
			dev-haskell/case-insensitive
			dev-haskell/clientsession
			dev-haskell/crypto-api
			dev-haskell/data-default
			dev-haskell/hamlet
			dev-haskell/transformers
			dev-haskell/wai
			dev-haskell/wai-logger
			dev-haskell/warp
			dev-haskell/yesod
			dev-haskell/yesod-core
			dev-haskell/yesod-default
			dev-haskell/yesod-form
			dev-haskell/yesod-static
			s3? ( !webdav? ( dev-haskell/http-types
		)
		)
		)
		webdav? ( >=dev-haskell/dav-0.3
			dev-haskell/http-conduit
			dev-haskell/xml-conduit
		)
		xmpp? ( >=dev-haskell/gnutls-0.1.4
			dev-haskell/network-protocol-xmpp
			dev-haskell/xml-types
		)"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag android android) \
		$(cabal_flag assistant assistant) \
		$(cabal_flag dbus dbus) \
		$(cabal_flag dns dns) \
		$(cabal_flag inotify inotify) \
		$(cabal_flag pairing pairing) \
		$(cabal_flag production production) \
		$(cabal_flag s3 s3) \
		$(cabal_flag tdfa tdfa) \
		$(cabal_flag testsuite testsuite) \
		$(cabal_flag webapp webapp) \
		$(cabal_flag webdav webdav) \
		$(cabal_flag xmpp xmpp)
}

src_compile() {
	haskell-cabal_src_compile
	use doc && emake docs
}

src_test() {
	if use webapp; then
		export GIT_CONFIG=${T}/temp-git-config
		git config user.email "git@src_test"
		git config user.name "Mr. ${P} The Test"

		emake test
	fi
}

src_install() {
	haskell-cabal_src_install
	dosym git-annex /usr/bin/git-annex-shell # standard make install does more, than needed

	emake install-mans DESTDIR="${D}" PREFIX="${EPREFIX}/usr"
	use doc && emake install-docs DESTDIR="${D}" PREFIX="${EPREFIX}/usr"
	mv "${ED}"/usr/share/doc/{${PN},${PF}}
	dodoc CHANGELOG README
}
