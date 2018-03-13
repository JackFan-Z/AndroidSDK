EMULATOR_NAME=TestAVD_x86_64
echo "Creating emulator "$EMULATOR_NAME
echo "no" | avdmanager create avd -n ${EMULATOR_NAME} -k "system-images;android-24;default;x86_64"
echo "Start emulator x86_64 ..."
emulator64-x86 -avd ${EMULATOR_NAME} -noaudio -no-boot-anim -no-window -accel on

