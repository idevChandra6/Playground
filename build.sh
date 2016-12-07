XCODE_PROJECT="QR.xcodeproj"

echo "=== Present working directory === \n$PWD"

PROVISIONING_PROFILE="$HOME/Library/MobileDevice/Provisioning Profiles/$PROFILE_UUID.mobileprovision"
echo "=== Provisioning Profile: ==="
echo $PROVISIONING_PROFILE

ARCHIVE_PATH="$PWD/build.xcarchive"
echo "=== ARCHIVE PATH ==="
echo $ARCHIVE_PATH

APP_DIR="$ARCHIVE_PATH/Products/Applications"
echo "=== APP Directory ==="
echo $APP_DIR

DSYM_DIR="$ARCHIVE_PATH/dSYMs"
echo "=== Dynamic Symbols Diretory ==="
echo $DSYM_DIR

echo "********************"
echo "*     Archive      *"
echo "********************"
xcodebuild -scheme "$XCODE_SCHEME" -project "$XCODE_PROJECT" -archivePath "$ARCHIVE_PATH" clean archive

echo "********************"
echo "*    ENVIRONMENT   *"
echo "********************"
env

xcodebuild -project QR.xcodeproj -showBuildSettings
