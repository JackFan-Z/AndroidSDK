ANDROID_TARGET_SDK="platforms;android-25"
ANDROID_BUILD_TOOLS="build-tools;25.0.3"
ANDROID_SDK_TOOLS="25.2.3"
ANDROID_IMAGE1="system-images;android-24;default;arm64-v8a"
ANDROID_IMAGE2="system-images;android-24;default;armeabi-v7a"

sudo sdk/tools/bin/sdkmanager "platform-tools" "${ANDROID_TARGET_SDK}" "${ANDROID_BUILD_TOOLS}"
sudo sdk/tools/bin/sdkmanager "extras;android;m2repository" "extras;google;m2repository"
sudo sdk/tools/bin/sdkmanager "emulator" "${ANDROID_IMAGE1}" "${ANDROID_IMAGE2}"
