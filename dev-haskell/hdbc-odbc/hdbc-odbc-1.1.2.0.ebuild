# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/hdbc-odbc/hdbc-odbc-0.99.0.0.ebuild,v 1.5 2006/03/12 16:21:42 ranger Exp $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal versionator

DESCRIPTION="ODBC database driver for HDBC"
HOMEPAGE="http://software.complete.org/hdbc-odbc"
SRC_URI="http://software.complete.org/hdbc-odbc/static/download_area/${PV}/${PN}_${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

hdbc_PV=$(get_version_component_range 1-3)

DEPEND=">=dev-lang/ghc-6.4.1
		dev-haskell/mtl
		=dev-haskell/hdbc-${hdbc_PV}*
		>=dev-db/unixODBC-2.2"

S="${WORKDIR}/${PN}"
