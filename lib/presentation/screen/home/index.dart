import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/presentation/screen/people_list/index.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';
import 'package:swapiflutter/presentation/store_ui/home_screen_store_ui.dart';
import 'package:swapiflutter/presentation/widget/button/index.dart';
import 'package:swapiflutter/presentation/widget/screen_wrapper/index.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenStoreUI _storeUI;

  @override
  void initState() {
    super.initState();
    _storeUI = HomeScreenStoreUI();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              label: 'OPEN PEOPLES',
              onTap: _storeUI.onPeople,
            )
          ],
        ),
      ),
    );
  }
}
