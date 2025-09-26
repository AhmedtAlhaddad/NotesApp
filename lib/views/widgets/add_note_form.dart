// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/Add%20_note_cubit/cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart' show NoteModel;
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
                var noteModel = NoteModel(
                  title: title!,
                  subtitle: subtitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
