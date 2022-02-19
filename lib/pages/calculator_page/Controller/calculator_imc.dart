class CalculatorImcController {
  String calculatorIMC(heightController, weightController) {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double imc = weight / (height * height);

    if (imc < 18.6) {
      return "Você está abaixo do peso ${imc.toStringAsPrecision(2)}";
    } else if (imc > 18.6 && imc < 24.9) {
      return "Você está no peso ideal ${imc.toStringAsPrecision(2)}";
    } else if (imc > 24.9 && imc < 29.9) {
      return "Você está levemente acima do peso ${imc.toStringAsPrecision(2)}";
    } else if (imc > 29.9 && imc < 34.9) {
      return "Você está com obesidade grau I ${imc.toStringAsPrecision(2)}";
    } else if (imc > 34.9 && imc < 39.9) {
      return "Você está com obesidade grau II ${imc.toStringAsPrecision(2)}";
    } else {
      return "Você está com obesidade grau III ${imc.toStringAsPrecision(2)}";
    }
  }
}
