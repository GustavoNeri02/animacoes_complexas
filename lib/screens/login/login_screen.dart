import 'package:animations/screens/login/widgets/form_container.dart';
import 'package:animations/screens/login/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_full_size.jpg", ),
            fit: BoxFit.cover,
          )
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: CircleAvatar(
                          child: Icon(Icons.person, size: 100,),
                        ),
                      ),
                    ),
                    FormContainer(),
                    SignUpButton()
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
