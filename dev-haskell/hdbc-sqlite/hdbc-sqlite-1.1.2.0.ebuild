# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/hdbc-sqlite/hdbc-sqlite-0.99.0.0.ebuild,v 1.5 2006/03/09 17:41:59 dcoutts Exp $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal versionator

DESCRIPTION="Sqlite v3 database driver for HDBC"
HOMEPAGE="http://software.complete.org/hdbc-sqlite3"
SRC_URI="http://software.complete.org/hdbc-sqlite3/static/download_area/${PV}/${PN}3_${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

hdbc_PV=$(get_version_component_range 1-3)

DEPEND=">=dev-lang/ghc-6.4.1
		dev-haskell/mtl
		=dev-haskell/hdbc-${hdbc_PV}*
		>=dev-db/sqlite-3.2"

S="${WORKDIR}/${PN}3"
