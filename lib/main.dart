import 'package:calculadora/pages/calculator_page/calculator.dart';
import 'package:calculadora/pages/login_page/login_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(
            0xFFC1007E,
          ),
          fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/calculator': (context) => const CalculatorPage(),
      },
    );
  }
}
