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
echo "*    ENVIRONMENT   *"
echo "********************"
env
JUMPBACK=`pwd`
xcodebuild -project QR.xcodeproj -showBuildSettings

echo "********************"
echo "*    BUILT_PRODUCTS_DIR   *"
echo "********************"
cd $BUILT_PRODUCTS_DIR; ls -ltra

cd $DERIVED_FILES_DIR; echo "=== $PWD"; ls -ltra
cd $DERIVED_FILE_DIR; echo "=== $PWD"; ls -ltra
cd $DERIVED_SOURCES_DIR; echo "=== $PWD"; ls -ltra
cd $FRAMEWORKS_FOLDER_PATH; echo "==== $PWD"; ls -ltra

cd $JUMPBACK
echo "********************"
echo "*     Archive      *"
echo "********************"
xcodebuild -scheme "$XCODE_SCHEME" -project "$XCODE_PROJECT" -archivePath "$ARCHIVE_PATH" clean archive
