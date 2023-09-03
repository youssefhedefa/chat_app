import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, this.keyboardType,required this.label, required this.onChanged, this.validator}) : super(key: key);

  final TextInputType? keyboardType;
  final String label;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          label,
        ),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
