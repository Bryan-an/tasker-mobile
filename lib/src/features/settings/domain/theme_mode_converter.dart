import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Maps the `theme` field of the settings API (`"light"`, `"dark"`,
/// `"system"`) to Flutter's [ThemeMode]. Unknown values decode to `null`
/// so a bad server value never flips the user's theme.
class ThemeModeConverter implements JsonConverter<ThemeMode?, String?> {
  const ThemeModeConverter();

  @override
  ThemeMode? fromJson(String? json) {
    if (json == null) {
      return null;
    }

    return ThemeMode.values.asNameMap()[json];
  }

  @override
  String? toJson(ThemeMode? object) => object?.name;
}
