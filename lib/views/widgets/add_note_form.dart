import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/Custom_text_field.dart';
import 'package:noteapp/views/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formkey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 24),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(height: 150),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
