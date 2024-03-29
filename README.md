<img src="https://github.com/wasabeef/version_gen/raw/main/art/VersionGen.png" width="200px" align="left"/>
<br><br>
<p align="left">
  <a href="https://pub.dartlang.org/packages/version_gen">
    <img src="https://img.shields.io/pub/v/version_gen.svg">
  </a>
  <a href="https://github.com/wasabeef/version_gen/actions/workflows/dart-ci.yaml">
    <img src="https://github.com/wasabeef/version_gen/actions/workflows/dart-ci.yaml/badge.svg" />
  </a>
  <a href="https://pub.dev/packages/flutter_lints">
    <img src="https://img.shields.io/badge/style-flutter_lints-40c4ff.svg" />
  </a>
  <p>The Dart code generator for your package versions.<br>
  There is no way to get the package version from the code in the Dart ecosystem.</p>
<br><br>
</p>

## Installation

1. Add [build_runner] and [VersionGen] to your package's pubspec.yaml file:

```
dev_dependencies:
  build_runner:
  version_gen:
```

2. Install [VersionGen]

```sh
$ flutter pub get
```

3. Use [VersionGen]

```
$ flutter packages pub run build_runner build
```

## Configuration file

[VersionGen] generates dart files based on the key **`VersionGen`** of [`pubspec.yaml`](https://dart.dev/tools/pub/pubspec).  
Default configuration can be found [here](#default-configuration). 

```yaml
# pubspec.yaml
# ...

dev_dependencies:
  build_runner:
  version_gen:

# Optional (default: lib/gen/)
version_gen:
  path: lib/gen/

```


## Output file

```dart
/// DO NOT MODIFY BY HAND, Generated by version_gen
String packageVersion = '1.0.0+1';
```

## Issues

Please file [FlutterGen] specific issues, bugs, or feature requests in our [issue tracker](https://github.com/FlutterGen/flutter_gen/issues/new).

Plugin issues that are not specific to [FlutterGen] can be filed in the [Flutter issue tracker](https://github.com/flutter/flutter/issues/new).

[build_runner]: https://pub.dev/packages/build_runner
[versiongen]: https://pub.dev/packages/version_gen
