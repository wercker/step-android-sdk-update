echo "switching to: $ANDROID_HOME"
cd $ANDROID_HOME
echo pwd
expect -f $WERCKER_STEP_ROOT/android-update.exp "$WERCKER_ANDROID_SDK_UPDATE_FILTER"
