import 'package:animations/screens/login/widgets/form_container.dart';
import 'package:animations/screens/login/widgets/sign_up_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        actions: [
          NeumorphicRadio(
            child: const Icon(
              Icons.settings,
              size: 40,
            ),
            style: const NeumorphicRadioStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle()),
          ),
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("images/background_full_size.jpg", ),
              //   fit: BoxFit.cover,
              // )
              ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Text("Sua Logo",
                            style: GoogleFonts.nunito(
                                color: const Color(0XFF323232),
                                fontSize: 48,
                                fontWeight: FontWeight.bold)),
                      ),
                      const FormContainer(),
                      const SignUpButton(),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
