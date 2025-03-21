# setup

This is the basic setup for the flutter with all the required dependencies and functionalities

# runner_commands

--> dart pub run build_runner build --delete-conflicting-outputs
# To run and generate the localization strings

--> flutter pub run easy_localization:generate --output-dir=lib/foundation/localizations --output-file=localizations.g.dart --format=json --source-dir=assets/translations

# To run and generate the locale keys

--> flutter pub run easy_localization:generate -f keys --output-dir=lib/foundation/localizations --output-file=locale_keys.g.dart --source-dir=assets/translations '??' operator for null handling

# Build

--> apk : flutter build apk --flavor=prod -t lib/application/main/main_prod.dart --release
--> apk : flutter buildflutter build appbundle --flavor=prod -t lib/application/main/main_prod.dart --release apk --flavor=prod -t lib/application/main/main_prod.dart --release
--> ipa prod : flutter build ipa --flavor=prod -t lib/application/main/main_prod.dart --release
--> ipa Dev: flutter build ipa --flavor=dev -t lib/application/main/main_dev.dart --release
--> flutter run --release --flavor=dev -t lib/application/main/main_dev.dart
--> flutter run --release --flavor=prod -t lib/application/main/main_prod.dart --no-enable-impeller

# Pod-install issue

pod cache clean --all
rm -rf Pods Podfile.lock
pod install

#  Supported versions :

--> This project supports only >= 3.24.3 flutter version
--> Dart version => 3.5.3
--> Dev Tools => 2.37.3

# Reachability requirements :

--> ndkVersion = "27.0.12077973"
--> JavaVersion = 17

# Configure google service for multiple flavors using flutterFire :

--> flutterfire configure --project=[PROJECT_ID_In_Firebase_console] --out=lib\application\firebase\config.[FLAVOR].dart --platforms="ios,android" --ios-bundle-id="[BUNDLE_ID_THIS_FLAVOR]" --android-package-name="[PACKAGE_NAME_THIS_FLAVOR]"

# To delete the last committed push on GitLab
--> git checkout <current branch>
--> git reset --hard HEAD~1
--> git push --force
--> classpath
