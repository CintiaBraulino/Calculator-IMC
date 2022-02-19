import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/calculator');
        },
        child: const Text('Entrar'),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }
}
