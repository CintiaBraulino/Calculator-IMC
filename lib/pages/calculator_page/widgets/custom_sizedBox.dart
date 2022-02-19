import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  CustomSizedBox({
    required this.controller,
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  String hintText = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
