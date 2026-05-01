# Copyright 2026 Yassir Karroum
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Dofus - A tactical MMORPG by Ankama Games"
HOMEPAGE="https://www.dofus.com"
SRC_URI="https://launcher.cdn.ankama.com/installers/production/Dofus%203.0-Setup-x86_64.AppImage -> dofus-3.0.AppImage"

LICENSE="EULA"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="
	sys-fs/fuse:0
"
BDEPEND=""

S="${WORKDIR}"


src_install() {
	insinto /opt/dofus
	doins "${DISTDIR}/dofus-3.0.AppImage"

	fperms 0755 /opt/dofus/dofus-3.0.AppImage

	dosym /opt/dofus/dofus-3.0.AppImage /usr/bin/dofus

	insinto /usr/share/applications
	doins "${FILESDIR}/dofus.desktop"
}
