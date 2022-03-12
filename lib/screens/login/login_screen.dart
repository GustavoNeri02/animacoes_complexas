import 'package:animations/palette.dart';
import 'package:animations/screens/login/widgets/form_container.dart';
import 'package:animations/screens/login/widgets/sign_up_button.dart';
import 'package:animations/screens/login/widgets/stagger_animation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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
          const SizedBox(
            height: 16,
          ),
          const FormContainer(),
          StaggerAnimation(controller: _animationController.view),
          const SizedBox(
            height: 16,
          ),
          const SignUpButton(),
        ],
      ),
    );
  }
}
