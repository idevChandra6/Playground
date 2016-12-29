
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
xcodebuild -project QR.xcodeproj -showBuildSettings >> environ.sh
sed -i -e 's/ = /=/g' environ.sh
source environ.sh
echo "+++++++++++++++++++++++++++"
cat environ.sh
echo "+++++++++++++++++++++++++++"

echo "********************"
echo "*    BUILT_PRODUCTS_DIR   *"
echo "********************"
echo "==============" $BUILT_PRODUCTS_DIR
echo "==============" $DERIVED_FILES_DIR
echo "=============="  $DERIVED_FILE_DIR
echo "==============" $DERIVED_SOURCES_DIR
echo "==============" $FRAMEWORKS_FOLDER_PATH

echo "********************"
echo "*     Archive      *"
echo "********************"
#xcodebuild -scheme "$XCODE_SCHEME" -project "$XCODE_PROJECT" -archivePath "$ARCHIVE_PATH" archive

#cp
#ls -ltra $BUILT_PRODUCTS_DIR/ArchiveIntermediates/QR/IntermediateBuildFilesPath/UninstalledProducts/iphoneos/
#cp -R  /Users/distiller/Library/Developer/Xcode/DerivedData/QR-askpqxaeauirebgwdvhyjvcacmoh/Build/Intermediates/ArchiveIntermediates/QR/IntermediateBuildFilesPath/UninstalledProducts/iphoneos/QR.framework ~/Playground/

echo "======= HER OYU GO"
echo "==== SHELL IS " $SHELL

echo "PROJECT_TEMP_DIR is $PROJECT_TEMP_DIR"
#ls -ltra ~/Playground/
#zip -r QR.framework.zip QR.framework
#cp QR.framework.zip $CIRCLE_ARTIFACTS
