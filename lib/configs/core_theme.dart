import 'package:flutter/material.dart';

import 'app_theme.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primarySwatch: Colors.blue,
  fontFamily: fontFamily,
  primaryColor: AppTheme.light.primary,
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: AppTheme.light.primary,
        background: AppTheme.light.background,
        secondary: AppTheme.light.accentLight,
      ),
);

/// Ignore this
final themeDark = ThemeData(
  primarySwatch: Colors.deepOrange,
  fontFamily: fontFamily,
  primaryColor: AppTheme.light.primary,
  brightness: Brightness.dark,
  backgroundColor: Colors.grey[800],
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.grey[900],
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: AppTheme.light.primary,
        background: AppTheme.light.background,
        brightness: Brightness.dark,
      ),
);
