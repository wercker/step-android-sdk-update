cd /home/ubuntu/android-sdk-linux
export PACKAGE=sysimg-18
expect -f $WERCKER_STEP_ROOT/android-update.exp "$WERCKER_ANDROID_SDK_UPDATE_FILTER"