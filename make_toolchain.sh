ANDROID_NDK=/home/piller/NDK/android-ndk-r23c
    
# Create an arm64 API 26 libc++ toolchain.
$ANDROID_NDK/build/tools/make_standalone_toolchain.py \
  --arch arm64 \
  --api 26 \
  --install-dir=`pwd`/aarch64-linux-android-toolchain