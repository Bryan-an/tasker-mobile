import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Guards the layering rules of `lib/src`:
///
/// * Shared modules (`common_widgets`, `constants`, `themes`, `utils`,
///   `errors`, `config`, `router`) are feature-agnostic and never import
///   from `features/` or `navigation/`.
/// * `navigation` is the only non-feature module allowed to depend on
///   features, because it wires screens and blocs together.
/// * Inside a feature, `domain` never imports `data`, `application` or
///   `presentation`, and `data`/`application` never import `presentation`.
///
/// The rules are checked against import directives, so a violation fails
/// here before it shows up as a tangled dependency graph.
void main() {
  const package = 'package:tasker_mobile/src/';
  final libDir = Directory('lib/src');

  final dartFiles = libDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .where((f) =>
          !f.path.endsWith('.g.dart') && !f.path.endsWith('.freezed.dart'))
      .toList();

  final importPattern =
      RegExp("^import\\s+'($package[^']+)';", multiLine: true);

  /// Returns the `lib/src`-relative import targets of [file].
  List<String> importsOf(File file) {
    final content = file.readAsStringSync();

    return importPattern
        .allMatches(content)
        .map((m) => m.group(1)!.substring(package.length))
        .toList();
  }

  String relative(File file) =>
      file.path.replaceAll('\\', '/').replaceFirst('lib/src/', '');

  const sharedModules = <String>[
    'common_widgets/',
    'constants/',
    'themes/',
    'utils/',
    'errors/',
    'config/',
    'router/',
  ];

  test('shared modules do not import features or navigation', () {
    final violations = <String>[];

    for (final file in dartFiles) {
      final path = relative(file);

      if (!sharedModules.any(path.startsWith)) {
        continue;
      }

      for (final target in importsOf(file)) {
        if (target.startsWith('features/') ||
            target.startsWith('navigation/')) {
          violations.add('$path -> $target');
        }
      }
    }

    expect(violations, isEmpty, reason: violations.join('\n'));
  });

  test('feature layers only depend downward', () {
    final violations = <String>[];

    for (final file in dartFiles) {
      final path = relative(file);

      if (!path.startsWith('features/')) {
        continue;
      }

      final layer = path.split('/')[2];

      for (final target in importsOf(file)) {
        if (!target.startsWith('features/')) {
          continue;
        }

        final targetLayer = target.split('/')[2];

        final Set<String> forbidden;

        if (layer == 'domain') {
          forbidden = const {'data', 'application', 'presentation'};
        } else if (layer == 'data' || layer == 'application') {
          forbidden = const {'presentation'};
        } else {
          forbidden = const <String>{};
        }

        if (forbidden.contains(targetLayer)) {
          violations.add('$path -> $target');
        }
      }
    }

    expect(violations, isEmpty, reason: violations.join('\n'));
  });
}
