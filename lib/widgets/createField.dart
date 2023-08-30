import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key, required this.hintText, required this.controller});

  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 100,
        child: TextField(
          style: TextStyle(
            color: Colors.red,
            fontSize: 35,
          ),
          controller: controller,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintTextDirection: TextDirection.rtl,
            alignLabelWithHint: true,
            hintStyle: TextStyle(
              color: Colors.pink[200],
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
