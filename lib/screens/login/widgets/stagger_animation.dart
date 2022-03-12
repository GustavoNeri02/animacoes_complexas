import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class StaggerAnimation extends StatelessWidget {
  final Animation controller;

  const StaggerAnimation({Key? key, required this.controller})
      : super(key: key);

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Container(
      child: NeumorphicButton(
        onPressed: () {},
        minDistance: 1,
        style: NeumorphicStyle(
            intensity: 1,
            boxShape: NeumorphicBoxShape.roundRect(
                const BorderRadius.all(Radius.circular(50)))),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: GoogleFonts.nunitoSans(fontSize: 16),
        ),
        padding: EdgeInsets.symmetric(vertical: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildAnimation,
    );
  }
}
