# Maintainer: Anselmo L. S. Melo <anselmolsm@gmail.com>

pkgname=qt5-git
pkgver=20120523
pkgrel=1
pkgdesc="Qt 5"
arch=('i686' 'x86_64')
url="https://gitorious.org/qt/qt5.git"
license=('LGPL')
depends=()
makedepends=('gcc' 'git')
source=()
md5sums=()

_gitroot="git://gitorious.org/qt/qt5.git"
_gitname=qt5

build() {
	cd "${srcdir}"

	if [ ! -d "${srcdir}/${_gitname}" ]; then
		git clone ${_gitroot}
	else
		cd ${_gitname} && git pull origin
	fi

	msg "GIT checkout done."

	cd "${srcdir}"
	cp -rf "${_gitname}" "${_gitname}-build"
	cd "${_gitname}-build"
        ./init-repository --module-subset=qtbase
        ./configure -nomake demos -nomake tests -nomake examples --prefix=/opt/qt5 -opensource --confirm-license
	make
}

package() {
	cd "${srcdir}/${_gitname}-build"

	make INSTALL_ROOT="${pkgdir}" install
}
