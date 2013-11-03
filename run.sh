cd "$ANDROID_HOME"
echo /home/ubuntu/android-sdk-linux
export PACKAGE=sysimg-18
expect -f $WERCKER_STEP_ROOT/android-update.exp "$PACKAGE"