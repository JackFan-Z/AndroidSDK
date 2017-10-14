EMULATOR_NAME=testAVD
echo "Start emulator ..."
echo "no" | avdmanager create avd -n ${EMULATOR_NAME} -k "system-images;android-24;default;armeabi-v7a"
emulator64-arm -avd ${EMULATOR_NAME} -noaudio -no-boot-anim -no-window -accel on

