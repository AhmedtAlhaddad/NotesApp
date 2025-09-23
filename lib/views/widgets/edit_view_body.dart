import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/Custom_text_field.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'edit note', icon: Icons.check),
          SizedBox(height: 30),
          CustomTextField(hint: 'title'),
          SizedBox(height: 20),
          CustomTextField(hint: 'content', maxLines: 5),
        ],
      ),
    );
  }
}
