if [ ! -n "$WERCKER_ANDROID_SDK_UPDATE"]; then
    error "Please specify filter options"
    exit 1
fi

# Install expect if not already available
if ! type expect &> /dev/null ;
then
     info 'expect package not found. installing it'
     sudo apt-get update
     sudo apt-get install expect

     if [[ $? -ne 0 ]];then
         fail 'install of expect failed';
     else
         info 'finished installing expect';
     fi
else
    info 'expect is available, and will not be installed by this step'
fi

$WERCKER_STEP_ROOT/android-update.exp $WERCKER_ANDROID_SDK_UPDATE

if [ ! -n "$ANDROID_UPDATE_FILTER"];
    export ANDROID_UPDATE_FILTER=$WERCKER_ANDROID_SDK_UPDATE
else
    export ANDROID_UPDATE_FILTER=ANDROID_UPDATE_FILTER:,$WERCKER_ANDROID_SDK_UPDATE
