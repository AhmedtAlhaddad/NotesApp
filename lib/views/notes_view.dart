import 'package:flutter/material.dart';
import 'package:noteapp/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: const NotesViewBody(),
    );
  }
}
