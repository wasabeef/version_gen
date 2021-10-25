@TestOn('vm')
import 'dart:io';

import 'package:path/path.dart';
import 'package:test/test.dart';
import 'package:version_gen/version_gen.dart';

void main() {
  test('Change output path', () async {
    const pubspec = 'test_resources/pubspec.yaml';
    const generatedPath = 'test_resources/lib/gen/';
    const generatedFileName = 'version.gen.dart';
    const fact = 'test_resources/actual_data/version.gen.dart';

    VersionGenBuilder().generate(
      pubspec: pubspec,
      genFile: generatedFileName,
    );
    final actual = File(join(generatedPath, generatedFileName))
        .readAsStringSync()
        .replaceAll('\r\n', '\n');
    final expected = File(fact).readAsStringSync().replaceAll('\r\n', '\n');
    expect(actual, expected);
  });

  test('Default output path', () async {
    const pubspec = 'test_resources/pubspec_not_settings.yaml';
    const generatedPath = 'test_resources/aaa/bbb/ccc/';
    const generatedFileName = 'version.gen.dart';
    const fact = 'test_resources/actual_data/version.gen.dart';

    VersionGenBuilder().generate(
      pubspec: pubspec,
      genFile: generatedFileName,
    );
    final actual = File(join(generatedPath, generatedFileName))
        .readAsStringSync()
        .replaceAll('\r\n', '\n');
    final expected = File(fact).readAsStringSync().replaceAll('\r\n', '\n');
    expect(actual, expected);
  });
}
