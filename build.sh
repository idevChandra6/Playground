#!/bin/sh
# See Chandra when you are about to modify this.

PROVISIONING_PROFILE="$HOME/Library/MobileDevice/Provisioning Profiles/$PROFILE_UUID.mobileprovision"
RELEASE_DATE=`date '+%Y-%m-%d %H:%M:%S'`
ARCHIVE_PATH="$PWD/build.xcarchive"
APP_DIR="$ARCHIVE_PATH/Products/Applications"
DSYM_DIR="$ARCHIVE_PATH/dSYMs"

echo "========= ARCHIVE ========="
xcodebuild -verbose -scheme $XCODE_SCHEME -project $XCODE_PROJECT ONLY_ACTIVE_ARCH=NO
