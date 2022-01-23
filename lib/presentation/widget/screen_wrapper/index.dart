import 'package:flutter/material.dart';
import 'package:swapiflutter/presentation/constant/colors.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget child;

  const ScreenWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: child,
        ),
        backgroundColor: ProjectColors.secondColor,
      ),
    );
  }
}
