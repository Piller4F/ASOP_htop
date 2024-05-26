echo "begin to adb push"

mkdir install

# 需要去除软链接，不然集成android PRODUCT_COPY_FILES 会拷贝异常
cp -RLvf ./ncurses-6.0/install/* ./install
cp -RLvf ./htop/install/* ./install

cd install && tar cf install.tar *

adb root
adb shell mkdir /data/htop
adb shell rm -rf /data/htop/*
adb push ./install.tar /data/htop
adb shell tar xf /data/htop/install.tar -C /data/htop/

echo "adb push success"
