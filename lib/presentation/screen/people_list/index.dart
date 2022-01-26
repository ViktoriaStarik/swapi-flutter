import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:swapiflutter/presentation/screen/people_list/people_card.dart';
import 'package:swapiflutter/presentation/store_ui/people_list_screen_store_ui.dart';
import 'package:swapiflutter/presentation/widget/loader/index.dart';
import 'package:swapiflutter/presentation/widget/screen_wrapper/index.dart';
import './styles.dart';

class PeopleListScreen extends StatefulWidget {
  static const String routeName = '/peoples';

  const PeopleListScreen({Key? key}) : super(key: key);

  @override
  State<PeopleListScreen> createState() => _PeopleListScreen();
}

class _PeopleListScreen extends State<PeopleListScreen> {
  late PeopleListScreenStoreUI _storeUI;

  @override
  void initState() {
    super.initState();
    _storeUI = PeopleListScreenStoreUI();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        child: Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Peoples', style: Styles.titleStyle),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: ', style: Styles.countStyle),
              Text(_storeUI.data.countText, style: Styles.countStyle),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _storeUI.listViewData.itemCount,
                itemBuilder: _storeUI.listViewData.itemBuilder),
          ),
        ],
      ),
    ));
  }
}
