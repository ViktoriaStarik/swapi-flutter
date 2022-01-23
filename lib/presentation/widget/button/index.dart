import 'package:flutter/material.dart';
import './styles.dart';

class Button extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const Button({Key? key, required this.label, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: Styles.containerDecoration,
            child: Text(label,
                style: Styles.textStyle, textAlign: TextAlign.center)));
  }
}
