import 'package:flutter/material.dart';
import 'package:swapiflutter/presentation/constant/colors.dart';

class Styles {
  static TextStyle titleStyle =
      const TextStyle(fontSize: 32, fontWeight: FontWeight.w700);
  static TextStyle countStyle = const TextStyle(fontSize: 18);
}

class PeopleCardStyles {
  static BoxDecoration containerDecoration = BoxDecoration(
      border: Border.all(color: ProjectColors.mainColor),
      borderRadius: BorderRadius.circular(4));
  static TextStyle nameStyle = const TextStyle(fontWeight: FontWeight.w500);
}
