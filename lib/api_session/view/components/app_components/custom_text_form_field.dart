import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key, required this.label, required this.controller})
      : super(key: key);
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          label: Text(
            label,
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(16),
          ))),
    );
  }
}
