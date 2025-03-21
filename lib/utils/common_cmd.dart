///
/// FLUTTER
///

// TODO: flutter clean
// TODO: flutter pub get
// TODO: flutter build apk
// TODO: flutter build ipa(ios)

///
/// Flavor based apk generating
///

// TODO: flutter run apk –flavour dev -t lib/application/main/main_dev.dart –release
// TODO: flutter run ipa –flavour dev -t lib/application/main/main_dev.dart –release

///
/// CODE GENERATING
///

// TODO: flutter pub run build_runner build –delete-conflicting-outputs
///
/// Flavor based aab file  generating
///

// TODO: flutter build appbundle --flavor prod -t lib/application/main/main_prod.dart
// TODO: flutter build appbundle
// TODO: flutter build appbundle --flavor=prod -t lib/application/main/main_prod.dart --release apk --flavor=prod -t lib/application/main/main_prod.dart --release

///
/// FlUTTER VERSION CMD
///

// TODO: flutter --version
// TODO: flutter doctor
// TODO: flutter doctor -v

///
/// IOS Commands
///

// TODO: cd ios
// TODO: rm Podfile.lock
// TODO: pod install && pod update
// TODO: pod repo update
// TODO: Cd ..

///
/// GoogleJson service file generating command(flavor based)
///

// TODO: flutterfire configure --project=[PROJECT_ID] --out=lib\application\firebase\config.[FLAVOR].dart --platforms="ios,android" --ios-bundle-id="[BUNDLE_ID_THIS_FLAVOR]" --android-package-name="[PACKAGE_NAME_THIS_FLAVOR]"
// TODO: flutterfire configure --project=eshopdev-bea11 --out=lib\application\config\firebase_options.dart --platforms="ios,android" --ios-bundle-id="com.eshop.dev" --android-package-name="com.eshop.dev"

///
/// APP NAME AND ICONS,BUNDLE ID CMDS
///

/*App name change commands
Plugins - rename: ^3.0.2
1.Set and Get app name cmd :*/

// TODO: rename setAppName --targets ios,android --value "YourAppName"
// TODO:  rename getAppName --targets ios,android

///
/// BUNDLE ID CMDS
///

// TODO: rename setBundleId --targets android,ios --value "com.example.bundleId"
// TODO: rename getBundleId --targets android,ios

/*
App Icons commands
Plugins - flutter_launcher_icons: ^0.14.3
*/

///
/// Generate and Config
///

// TODO: dart run flutter_launcher_icons:generate
// TODO: dart run flutter_launcher_icons
// TODO: dart run flutter_launcher_icons:generate -f <your config file name here>

/*
Like :
Your Icons path in pubspec.yaml file
flutter_icons:
color: "#F5F5F5"
android: true
ios: true
image_path: "assets/images/playstore.png"
image_path_ios: "assets/images/appstore.png"
min_sdk_android: 21
remove_alpha_ios: true
*/

///
/// Path based cmd line :
///

// TODO: dart run flutter_launcher_icons -f flutter_launcher_icons.yaml

/*
App Splash commands

Plugins - flutter_native_splash: ^2.4.5
flutter_native_splash:
color: "#F5F5F5"
image: "assets/images/playstore.png"
*/

///
/// Generate and Config
///

// TODO:  dart run flutter_native_splash:create
// TODO:  dart run flutter_launcher_icons -f flutter_launcher_icons.yaml
