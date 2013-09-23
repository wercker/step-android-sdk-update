if [ ! -n "$WERCKER_ANDROID_SDK_UPDATE"]; then
    error "Please specify filter options"
    exit 1
fi

./android-update.exp $WERCKER_ANDROID_SDK_UPDATE

if [ ! -n "$ANDROID_UPDATE_FILTER"];
    export ANDROID_UPDATE_FILTER=$WERCKER_ANDROID_SDK_UPDATE
else
    export ANDROID_UPDATE_FILTER=ANDROID_UPDATE_FILTER:,$WERCKER_ANDROID_SDK_UPDATE
