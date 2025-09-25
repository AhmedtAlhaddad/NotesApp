import 'package:flutter/material.dart';
import 'package:noteapp/contanse.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hint,
    this.maxLines = 1,
    super.key,
    this.onsaved,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,

        hintStyle: const TextStyle(color: kprimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
