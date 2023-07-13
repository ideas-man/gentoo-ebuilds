EAPI=8

DESCRIPTION="A simple virtual terminal emulator for X."
HOMEPAGE="https://st.suckless.org"
SRC_URI="https://github.com/ideas-man/st-git/archive/master.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/st-git-master"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
>=x11-libs/libXft-2.3.6"
DEPEND="${RDEPEND}"
BDEPEND=""

src_configure() {
    : # do nothing
}

src_compile() {
    emake PREFIX=/usr DESTDIR="${D}" X11INC=/usr/include/X11 X11LIB=/usr/lib64/X11
}

src_install() {
    emake PREFIX=/usr DESTDIR="${D}" install
}
