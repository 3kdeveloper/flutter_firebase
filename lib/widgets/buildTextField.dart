import 'package:flutter/material.dart';

Widget buildTextFormField({
  TextEditingController textEditingController,
  String hintText,
  String onSavedValue,
  Function validator,
}) {
  return TextFormField(
    controller: textEditingController,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: hintText,
      filled: true,
      fillColor: Colors.grey.shade200,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
    ),
    onSaved: (value) {
      onSavedValue = value;
    },
    validator: validator,
  );
}
