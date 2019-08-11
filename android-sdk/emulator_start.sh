EMULATOR_NAME=TestAVD_armeabi-v7a
echo "Creating emulator "$EMULATOR_NAME
echo "no" | avdmanager create avd -n ${EMULATOR_NAME} -k "system-images;android-24;default;armeabi-v7a"
echo "Start emulator ..."
/opt/android-sdk/emulator/emulator -avd ${EMULATOR_NAME} -noaudio -no-boot-anim -no-window -accel on -writable-system

