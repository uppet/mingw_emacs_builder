BUILD_REV=`echo tags.txt`
export LAST_PWD=`pwd`
pacman -S --noconfirm git autoconf automake texinfo unzip
git clone --depth 1   https://github.com/emacs-mirror/emacs.git
cd emacs
git fetch origin $BUILD_REV:workingcopy
git checkout workingcopy
ls
cd $GITHUB_WORKSPACE
pwd
cd $LAST_PWD/emacs
pwd
pacman -S  --noconfirm --needed base-devel    mingw-w64-x86_64-toolchain    mingw-w64-x86_64-xpm-nox    mingw-w64-x86_64-gmp    mingw-w64-x86_64-gnutls    mingw-w64-x86_64-libtiff    mingw-w64-x86_64-giflib    mingw-w64-x86_64-libpng    mingw-w64-x86_64-libjpeg-turbo    mingw-w64-x86_64-librsvg    mingw-w64-x86_64-libwebp    mingw-w64-x86_64-lcms2    mingw-w64-x86_64-libxml2    mingw-w64-x86_64-zlib    mingw-w64-x86_64-harfbuzz    mingw-w64-x86_64-libgccjit    mingw-w64-x86_64-sqlite3    mingw-w64-x86_64-libtree-sitter
./autogen.sh
./configure --prefix=`pwd`/emacs_bin_out --without-dbus
make -j12
make install
ls emacs_bin_out
cd emacs_bin_out/bin
unzip $GITHUB_WORKSPACE/mingw-bin-dlls.zip

