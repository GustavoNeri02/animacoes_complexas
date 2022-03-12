import 'package:animations/palette.dart';
import 'package:animations/screens/login/widgets/form_container.dart';
import 'package:animations/screens/login/widgets/other_login_option_button.dart';
import 'package:animations/screens/login/widgets/sign_up_button.dart';
import 'package:animations/screens/login/widgets/stagger_animation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text("Sua Logo",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    color: Pallet().palette![1],
                    fontSize: 48,
                    fontWeight: FontWeight.bold)),
          ),
          NeumorphicIcon(
            Icons.home,
            size: 80,
            duration: const Duration(seconds: 2),
            curve: Curves.elasticInOut,
            style: const NeumorphicStyle(
              depth: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          const FormContainer(),
          const SizedBox(height: 20),
          StaggerAnimation(controller: _animationController.view),
          const SizedBox(height: 20),
          Row(children: const [
            Expanded(child: Divider(
              indent: 5,
              endIndent: 10,
              thickness: 1,
            )),
            Text("ou"),
            Expanded(child: Divider(
              indent: 10,
              endIndent: 5,
              thickness: 1,
            )),
          ]),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              OtherLoginOptionButton(path: "images/google_logo.jpg", color: Colors.red),
              OtherLoginOptionButton(icon: FontAwesomeIcons.facebookF, color: Colors.blueAccent),
              OtherLoginOptionButton(icon: FontAwesomeIcons.linkedinIn, color: Colors.blueAccent),

            ],
          ),
          const SizedBox(height: 20),
          const SignUpButton(),
        ],
      ),
    );
  }
}
