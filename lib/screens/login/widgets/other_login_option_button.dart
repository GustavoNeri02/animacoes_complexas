import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OtherLoginOptionButton extends StatelessWidget {
  final IconData? icon;
  final String? path;
  final Color color;

  const OtherLoginOptionButton(
      {Key? key, this.icon, this.path, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? type;
    if (icon != null && path == null) {
      type = true;
    } else if (icon == null && path != null) {
      type = false;
    }

    return NeumorphicButton(
        onPressed: () {},
        minDistance: 1,
        style: const NeumorphicStyle(
          intensity: 1,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: type != null
            ? type == true
                ? Icon(
                    icon,
                    color: color,
                  )
                : Image.asset(
                    path!,
                    fit: BoxFit.cover,
                    height: 20,
                  )
            : const Text("erro"));
  }
}
