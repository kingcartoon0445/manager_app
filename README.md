# Flutter Base: Clean Architecture

## Techical in Project

- Architech: Clean Architecture
- Rest API: Dio
- Design Pattern: Bloc
- DI (Dependency Injection): Get_it, Injectable
- [Flutter Gen](https://pub.dev/packages/flutter_gen)
- [Easy Localization](https://pub.dev/packages/easy_localization)
- [Auto Route](https://pub.dev/packages/auto_route)
- [Retrofit](https://pub.dev/packages/retrofit)
- [Get It](https://pub.dev/packages/get_it)
- [Injectable](https://pub.dev/packages/injectable)

## Install

### Easy Localization

#### Why easy_localization?

- 🚀 Easy translations for many languages
- 🔌 Load translations as JSON, CSV, Yaml, Xml using Easy Localization Loader
- 💾 React and persist to locale changes
- ⚡ Supports plural, gender, nesting, RTL locales and more
- ↩️ Fallback locale keys redirection
- ⁉️ Error widget for missing translations
- ❤️ Extension methods on Text and BuildContext
- 💻 Code generation for localization files and keys.
- 🛡️ Null safety
- 🖨️ Customizable logger.

Add to your pubspec.yaml:

```yaml
dependencies:
  easy_localization: <last_version>
```

Create folder and add translation files like this

```yaml
assets
└── translations
    ├── {languageCode}.{ext}                  //only language code
    └── {languageCode}-{countryCode}.{ext}    //or full locale code
```

Example:

```yaml
assets
└── translations
    ├── en.json
    └── en-US.json
```

Declare your assets localization directory in pubspec.yaml:

```yaml
flutter:
  assets:
    - assets/translations/
```

Run these two command line commands one after the other to generate the easy localization files for use.

```ruby
flutter pub run easy_localization:generate --source-dir ./assets/lang
```

```ruby
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart --source-dir ./assets/lang
```

#### With .sh file

create .sh file with script

```yaml
#!/bin/bash

flutter pub run build_runner build --delete-conflicting-outputs

flutter pub run easy_localization:generate --source-dir ./assets/lang

flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart --source-dir ./assets/lang
```

use the following command to add command to .sh file on cmd

```ruby
chmod +x <file_name>.sh
```

run .sh file:

```ruby
./<file_name>.sh
```

### Flutter Gen

Works with macOS and Linux.

```ruby
brew install FlutterGen/tap/fluttergen
```

Works with macOS, Linux and Windows.

```ruby
dart pub global activate flutter_gen
```

Add build_runner and FlutterGen to your package's pubspec.yaml file:

```yaml
dev_dependencies:
  build_runner:
  flutter_gen_runner:
```

Use FlutterGen

```ruby
dart run build_runner build
```
# Thay đổi màn hình splash Screen
flutter pub run flutter_native_splash:create