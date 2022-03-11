import 'package:animations/palette.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Não possui uma conta?",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Pallet().palette![1],
            letterSpacing: 0.5,
          ),
        ),
        GestureDetector(
          child: Text(
            " Cadastre-se!",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Pallet().palette![1],
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
