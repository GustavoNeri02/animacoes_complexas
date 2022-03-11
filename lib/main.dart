import 'package:animations/palette.dart';
import 'package:animations/screens/login/login_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations',
      themeMode: ThemeMode.system,
      theme: NeumorphicThemeData(
          baseColor: Pallet().palette![0],
          shadowLightColor: Colors.white,
          lightSource: LightSource.topLeft,
          iconTheme: IconThemeData(
            color: Pallet().palette![1],
          ),
          depth: 10),
      darkTheme: NeumorphicThemeData(
          baseColor: Pallet().palette![1],
          lightSource: LightSource.topLeft,
          depth: 6),
      home: const LoginScreen(),
    );
  }
}
