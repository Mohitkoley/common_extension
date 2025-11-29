import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // media query
  double get w => MediaQuery.sizeOf(this).width;
  double get h => MediaQuery.sizeOf(this).height;

  // keyboard height
  double get keyBoardHeightPadding => MediaQuery.of(this).viewInsets.bottom;

  //theme
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  TextStyle get titleLarge => textTheme.titleLarge!;
  TextStyle get bodyMedium => textTheme.bodyMedium!;
  TextStyle get bodySmall => textTheme.bodySmall!;
  TextStyle get bodyLarge => textTheme.bodyLarge!;
  TextStyle get labelLarge => textTheme.labelLarge!;
  TextStyle get labelMedium => textTheme.labelMedium!;
  TextStyle get labelSmall => textTheme.labelSmall!;
  TextStyle get headlineMedium => textTheme.headlineMedium!;
  TextStyle get headlineSmall => textTheme.headlineSmall!;
  TextStyle get headlineLarge => textTheme.headlineLarge!;
  TextStyle get titleMedium => textTheme.titleMedium!;
  TextStyle get titleSmall => textTheme.titleSmall!;

  void showSnack(String msg, {Color color = Colors.black}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        // padding: const EdgeInsets.all(10),

        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(10),
        content: Text(msg)));
  }
}
