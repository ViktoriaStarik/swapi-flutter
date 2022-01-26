import 'package:flutter/material.dart';

class ListViewDataViewModel {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  ListViewDataViewModel({required this.itemCount, required this.itemBuilder});
}
