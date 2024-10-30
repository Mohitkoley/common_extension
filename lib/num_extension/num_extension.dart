import 'package:flutter/widgets.dart';

extension NumExtension on num {
  double get toDouble => double.parse(toString());
  int get toInt => int.parse(toString());
  String get toStr => toString();

  SizedBox get hBox => SizedBox(height: toDouble);
  SizedBox get wBox => SizedBox(width: toDouble);
  SizedBox get hwBox => SizedBox(width: toDouble, height: toDouble);
}
