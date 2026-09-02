import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';

/// Colors that are specific to this app and do not map onto a
/// [ColorScheme] slot. Each [ThemeData] carries one instance, so widgets
/// read `AppColors.of(context)` instead of branching on the brightness.
class AppColors extends ThemeExtension<AppColors> {
  final Color green;
  final Color purple;
  final Color sectionDivider;
  final Color cardBorder;
  final Color doneCardBackground;
  final Color shortCardBackground;
  final Color chipBackground;
  final Color tabLabel;
  final List<Color> palette;
  final List<Color> progressTrack;

  const AppColors({
    required this.green,
    required this.purple,
    required this.sectionDivider,
    required this.cardBorder,
    required this.doneCardBackground,
    required this.shortCardBackground,
    required this.chipBackground,
    required this.tabLabel,
    required this.palette,
    required this.progressTrack,
  });

  static AppColors of(BuildContext context) =>
      Theme.of(context).extension<AppColors>()!;

  static final AppColors light = AppColors(
    green: greenColor,
    purple: purpleColor,
    sectionDivider: highlightColor,
    cardBorder: blackColor.withOpacity(0.25),
    doneCardBackground: highlightColor,
    shortCardBackground: whiteColor,
    chipBackground: highlightColor,
    tabLabel: primaryColor,
    palette: lightColorPalette,
    progressTrack: [
      primaryColor.withOpacity(0.08),
      primaryColor.withOpacity(0.1),
    ],
  );

  static final AppColors dark = AppColors(
    green: greenDarkColor,
    purple: purpleDarkColor,
    sectionDivider: Colors.grey.shade800,
    cardBorder: whiteColor.withOpacity(0.25),
    doneCardBackground: blackColor.withOpacity(0.01),
    shortCardBackground: primaryColor.withOpacity(0.2),
    chipBackground: primaryDarkColor.withOpacity(0.3),
    tabLabel: whiteColor,
    palette: darkColorPalette,
    progressTrack: [
      primaryColor.withOpacity(0.18),
      primaryColor.withOpacity(0.2),
    ],
  );

  @override
  AppColors copyWith({
    Color? green,
    Color? purple,
    Color? sectionDivider,
    Color? cardBorder,
    Color? doneCardBackground,
    Color? shortCardBackground,
    Color? chipBackground,
    Color? tabLabel,
    List<Color>? palette,
    List<Color>? progressTrack,
  }) {
    return AppColors(
      green: green ?? this.green,
      purple: purple ?? this.purple,
      sectionDivider: sectionDivider ?? this.sectionDivider,
      cardBorder: cardBorder ?? this.cardBorder,
      doneCardBackground: doneCardBackground ?? this.doneCardBackground,
      shortCardBackground: shortCardBackground ?? this.shortCardBackground,
      chipBackground: chipBackground ?? this.chipBackground,
      tabLabel: tabLabel ?? this.tabLabel,
      palette: palette ?? this.palette,
      progressTrack: progressTrack ?? this.progressTrack,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      green: Color.lerp(green, other.green, t)!,
      purple: Color.lerp(purple, other.purple, t)!,
      sectionDivider: Color.lerp(sectionDivider, other.sectionDivider, t)!,
      cardBorder: Color.lerp(cardBorder, other.cardBorder, t)!,
      doneCardBackground:
          Color.lerp(doneCardBackground, other.doneCardBackground, t)!,
      shortCardBackground:
          Color.lerp(shortCardBackground, other.shortCardBackground, t)!,
      chipBackground: Color.lerp(chipBackground, other.chipBackground, t)!,
      tabLabel: Color.lerp(tabLabel, other.tabLabel, t)!,
      palette: _lerpList(palette, other.palette, t),
      progressTrack: _lerpList(progressTrack, other.progressTrack, t),
    );
  }

  static List<Color> _lerpList(List<Color> a, List<Color> b, double t) {
    if (a.length != b.length) {
      return t < 0.5 ? a : b;
    }

    return [
      for (int i = 0; i < a.length; i++) Color.lerp(a[i], b[i], t)!,
    ];
  }
}
