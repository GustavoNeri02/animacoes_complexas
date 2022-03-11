import 'package:animations/palette.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  const InputField(
      {Key? key, required this.hint, required this.obscure, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      style: NeumorphicStyle(
          depth: -5,
          intensity: 1,
          boxShape: NeumorphicBoxShape.roundRect(
              const BorderRadius.all(Radius.circular(50))),
          oppositeShadowLightSource: false),
      child: TextFormField(
        obscureText: obscure,
        style: const TextStyle(),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.nunitoSans(
              color: Pallet().palette![2], fontWeight: FontWeight.w600),
          icon: Icon(
            icon,
            color: Pallet().palette![2],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
