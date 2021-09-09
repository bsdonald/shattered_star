import 'package:flutter/material.dart';

class CharacterFormField extends StatelessWidget {
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final String label;
  final int? maxLength;
  final int maxLines;
  final TextEditingController? controller;
  final String? initialValue;

  const CharacterFormField({
    Key? key,
    required this.onChanged,
    required this.validator,
    required this.label,
    this.maxLength,
    this.maxLines = 1,
    this.controller,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        labelText: label,
        counterText: '',
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: onChanged,
      validator: validator,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: 1,
    );
  }
}