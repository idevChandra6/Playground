echo "=== Present working directory === \n$PWD"

PROVISIONING_PROFILE="$HOME/Library/MobileDevice/Provisioning Profiles/$PROFILE_UUID.mobileprovision"
echo "=== Provisioning Profile: ==="
echo $PROVISIONING_PROFILE

ARCHIVE_PATH="$PWD/build.xcarchive"
echo "=== ARCHIVE PATH ==="
echo $PROVISIONING_PROFILE

APP_DIR="$ARCHIVE_PATH/Products/Applications"
echo "=== APP Directory ==="
echo $APP_DIR

DSYM_DIR="$ARCHIVE_PATH/dSYMs"
echo "=== Dynamic Symbols Diretory ==="
echo $DSYM_DIR

echo "********************"
echo "*     Archive      *"
echo "********************"
xcodebuild -scheme "$XCODE_SCHEME" -project "$XCODE_PROJECT" -archivePath "$ARCHIVE_PATH" clean archive CODE_SIGN_IDENTITY="$DEVELOPER_NAME"

echo "********************"
echo "*     Signing      *"
echo "********************"
xcrun -log -sdk iphoneos PackageApplication "$APP_DIR/$APPNAME.app" -o "$APP_DIR/$APPNAME.ipa" -sign "$DEVELOPER_NAME" -embed "$PROVISIONING_PROFILE"

RELEASE_NOTES="Build: $CIRCLE_BUILD_NUM\nUploaded: $RELEASE_DATE"

zip -r -9 "$DSYM_DIR/$APPNAME.app.dSYM.zip" "$DSYM_DIR/$APPNAME.app.dSYM"
