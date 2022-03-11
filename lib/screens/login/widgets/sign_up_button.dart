import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 160)
      ),
      child: const Text(
        "Não possui uma conta? Cadastre-se!",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.white,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.5,
        ),
      ),
      onPressed: (){},
    );
  }
}
