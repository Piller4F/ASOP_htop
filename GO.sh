source make_env.sh

rm -rf ./install

echo "make ncurses"
cd ./ncurses-6.0
rm -rf ./install
./configure --host=aarch64-linux-android --prefix=`pwd`/install --with-shared
make -j15 && make install
cp -RLvf ./install/* /mnt/g/RK3588CAT/temp_for_piller/install/
cd -
echo "make ncurses success"

echo "make htop"
cd ./htop
rm -rf ./install
./autogen.sh && ./configure --host=aarch64-linux-android --prefix=`pwd`/install --disable-unicode
make -j15 && make install
cp -rvf ./install/* /mnt/g/RK3588CAT/temp_for_piller/install/
cd -
echo "make htop succees"

source adb_install.sh
