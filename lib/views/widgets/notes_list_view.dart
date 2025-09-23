import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final itemcolors = const [
    Color.fromARGB(255, 225, 208, 208),
    Colors.orange,
    Color.fromARGB(255, 176, 205, 32),
    Colors.cyan,
    Color.fromARGB(255, 204, 154, 5),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 15),
      itemBuilder: (context, index) {
        final color = itemcolors[index % itemcolors.length];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NotesItem(color: color),
        );
      },
    );
  }
}
