import 'package:flutter/material.dart';
import 'package:swapiflutter/presentation/view_model/people_list_view_model.dart';
import './styles.dart';

class PeopleCard extends StatelessWidget {
  final PeopleCardViewModel people;

  const PeopleCard({Key? key, required this.people}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: people.onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: PeopleCardStyles.containerDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(people.name, style: PeopleCardStyles.nameStyle),
            ],
          ),
        ),
      ),
    );
  }
}
