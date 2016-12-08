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
xcodebuild -scheme "$XCODE_SCHEME" -project "$XCODE_PROJECT" -archivePath "$ARCHIVE_PATH" archive

cp
ls -ltra $BUILT_PRODUCTS_DIR/ArchiveIntermediates/QR/IntermediateBuildFilesPath/UninstalledProducts/iphoneos/
cp -rf /Users/distiller/Library/Developer/Xcode/DerivedData/QR-askpqxaeauirebgwdvhyjvcacmoh/Build/Intermediates/ArchiveIntermediates/QR/IntermediateBuildFilesPath/UninstalledProducts/iphoneos/QR.framework ~/Playground/
ls -ltra $DERIVED_FILES_DIR
ls -lrat  $DERIVED_FILE_DIR
ls -lrta $DERIVED_SOURCES_DIR
ls -ltra $FRAMEWORKS_FOLDER_PATH
echo "======= HER OYU GO"
ls -ltra ~/Playground/



/Users/distiller/Library/Developer/Xcode/DerivedData/QR-askpqxaeauirebgwdvhyjvcacmoh/Build/Products/Release-iphoneos
/Users/distiller/Library/Developer/Xcode/DerivedData/QR-askpqxaeauirebgwdvhyjvcacmoh/Build/Intermediates/ArchiveIntermediates/QR/IntermediateBuildFilesPath/UninstalledProducts/iphoneos/QR.framework
/Users/distiller/Library/Developer/Xcode/DerivedData/QR-askpqxaeauirebgwdvhyjvcacmoh/Build/Intermediates/ArchiveIntermediates/QR/IntermediateBuildFilesPath/UninstalledProducts/iphoneos/QR.framework
