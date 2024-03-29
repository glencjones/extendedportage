# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python3_{6..8} )

inherit distutils-r1

DESCRIPTION="Python dependency management and packaging made easy."
HOMEPAGE="https://pypi.org/project/pyenv  https://github.com/pyenv/pyenv"
SRC_URI="https://github.com/pyenv/pyenv/archive/v1.2.22.tar.gz"

LICENSE="MIT"
SLOT="1"
KEYWORDS="~amd64 ~arm ~arm64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

# File collisions
#RDEPEND=">=dev-python/poetry-core-1.0.0_alpha3[${PYTHON_USEDEP}]"
RDEPEND=""
DEPEND="${REDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

DOCS="README.md"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
