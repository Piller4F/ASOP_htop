# Add the standalone toolchain to the search path.
export PATH=$PATH:`pwd`/aarch64-linux-android-toolchain/bin

# Tell configure what tools to use.
target_host=aarch64-linux-android
export CC=$target_host-clang
export CXX=$target_host-clang++

# Tell configure what flags Android requires.
export CFLAGS="-fPIE -fPIC -Wno-error -Wno-null-pointer-arithmetic -I`pwd`/ncurses-6.0/install/include/ncurses -I`pwd`/ncurses-6.0/install/include"
export LDFLAGS="-pie -L`pwd`/ncurses-6.0/install/lib"