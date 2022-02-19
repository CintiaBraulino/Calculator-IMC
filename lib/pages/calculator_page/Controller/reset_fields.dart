import 'package:flutter/material.dart';

class ResetFieldsController {
  void resetFields(
    heightController,
    weightController,
    textInfo,
  ) {
    heightController.clear();
    weightController.clear();
    textInfo = "Informe seus dados";
  }
}
