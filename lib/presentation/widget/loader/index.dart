import 'package:flutter/material.dart';
import 'package:swapiflutter/presentation/constant/colors.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child:
            CircularProgressIndicator(backgroundColor: ProjectColors.mainColor),
      ),
    );
  }
}
