TERMUX_PKG_HOMEPAGE=https://github.com/pystardust/ani-cli
TERMUX_PKG_DESCRIPTION="A cli to browse and watch anime"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.1
TERMUX_PKG_SRCURL=https://github.com/pystardust/ani-cli/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=5e4ba037cd2a74e483cf2d9ddfe69335a81ee4d178270b8c6ee946024026ca00
TERMUX_PKG_DEPENDS="aria2, curl, git, grep, mpv, openssl, sed, ffmpeg"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin ani-cli
}