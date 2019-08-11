NDK_VERSION=$1
[ ! "$1" ] && NDK_VERSION=16
export PATH=/opt/android-ndk-r${NDK_VERSION}b:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export ANDROID_NDK_HOME=/opt/android-ndk-r${NDK_VERSION}b
