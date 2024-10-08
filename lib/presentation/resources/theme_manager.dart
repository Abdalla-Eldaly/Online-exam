import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    // main colors

    // ripple effect color
    splashColor: ColorManager.transparent,
    // app bar theme
    dialogTheme: const DialogTheme(
        backgroundColor: ColorManager.white,
        surfaceTintColor: ColorManager.transparent),

    dividerTheme: const DividerThemeData(
      color: ColorManager.black,
    ),



    // input decoration theme (text form field)
    inputDecorationTheme: const InputDecorationTheme(
      // content padding
      contentPadding: EdgeInsets.all(AppPadding.p8),
      // hint style
    ),
  );
}
