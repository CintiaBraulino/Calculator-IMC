import 'package:calculadora/pages/calculator_page/Controller/calculator_imc.dart';
import 'package:calculadora/pages/calculator_page/Controller/reset_fields.dart';
import 'package:calculadora/pages/calculator_page/widgets/custom_sizedBox.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  String textInfo = "Informe seus dados";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          leading: Image.asset('assets/images/logo_home 1.png'),
          title: const Text(
            'Calculadora IMC',
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  ResetFieldsController().resetFields(
                      heightController, weightController, textInfo);
                });
              },
              child: Image.asset('assets/images/refresh.png'),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Image.asset('assets/images/user.png'),
              ),
              const SizedBox(
                height: 47,
              ),
              CustomSizedBox(
                  controller: weightController, hintText: 'Peso (Kg)'),
              const SizedBox(
                height: 30,
              ),
              CustomSizedBox(
                  controller: heightController, hintText: 'Altura (cm)'),
              const SizedBox(
                height: 33.5,
              ),
              Container(
                margin: const EdgeInsets.only(top: 33.5),
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      textInfo = CalculatorImcController()
                          .calculatorIMC(heightController, weightController);
                    });
                  },
                  child: const Text('Calcular'),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              const SizedBox(
                height: 46,
              ),
              Text(textInfo)
            ],
          ),
        )));
  }
}
