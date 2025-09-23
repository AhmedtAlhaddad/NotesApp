import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/Custom_text_field.dart';
import 'package:noteapp/views/widgets/custom_button.dart';

class AddToButtomSheet extends StatelessWidget {
  const AddToButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextField(hint: 'title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'content', maxLines: 5),
            SizedBox(height: 150),
            CustomButton(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
