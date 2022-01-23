import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:swapiflutter/presentation/constant/colors.dart';
import 'package:swapiflutter/presentation/store_ui/people_detail_screen_store_ui.dart';
import 'package:swapiflutter/presentation/widget/loader/index.dart';
import 'package:swapiflutter/presentation/widget/screen_wrapper/index.dart';
import './styles.dart';

class PeopleDetailScreen extends StatefulWidget {
  static const String routeName = '/people-detail';
  final String? url;

  const PeopleDetailScreen({Key? key, @QueryParam('url') this.url})
      : super(key: key);

  @override
  State<PeopleDetailScreen> createState() => _PeopleDetailScreen();
}

class _PeopleDetailScreen extends State<PeopleDetailScreen> {
  late PeopleDetailScreenStoreUI _storeUI;

  @override
  void initState() {
    super.initState();
    _storeUI = PeopleDetailScreenStoreUI(url: widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_storeUI.data?.name ?? 'No data', style: Styles.titleStyle),
            const SizedBox(height: 24),
            if (_storeUI.loading)
              const Loader()
            else ...[
              RowInfo(label: 'Name', value: _storeUI.data?.name ?? 'No data'),
              const SizedBox(height: 16),
              RowInfo(
                  label: 'Gender', value: _storeUI.data?.gender ?? 'No data')
            ],
          ],
        ),
      ),
    );
  }
}

class RowInfo extends StatelessWidget {
  final String label;
  final String value;

  const RowInfo({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$label: ', style: TextStyle(fontSize: 18)),
        Text(value, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
