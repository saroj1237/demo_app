import 'package:demo_app/features/people/domain/entities/person.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});
  final Person person;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text("${person.name} (${person.username})"),
      subtitle: Text(
        person.website,
        style: const TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }
}
