import 'package:animations/screens/login/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            const InputField(
                  hint: "Username",
                  obscure: false,
                  icon: Icons.person_outline),
            const InputField(
                hint: "Password",
                obscure: true,
                icon: Icons.lock_outline),
          ],
        ),
      ),
    );
  }
}
