import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LogoApp(),
    );
  }
}

class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  State<LogoApp> createState() => _LogoAppState();
}

//SingleTickerProviderStateMixin = vsync
class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> animation;
  late Animation<double> animation2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
    ..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        //animação completada
        controller.reverse();
      }else if( status == AnimationStatus.dismissed){
        //animação resetada
        controller.forward();
      }
    });
    animation2 = Tween<double>(begin: 0, end: 150).animate(controller)
    ..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        //animação completada
        controller.reverse();
      }else if( status == AnimationStatus.dismissed){
        //animação resetada
        controller.forward();
      }
    });
    controller.forward();

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GrowTransition(child: const FlutterLogo(), animation: animation),
        GrowTransition(child: const FlutterLogo(), animation: animation2),
      ],
    );
  }

}

// class AnimatedLogo extends AnimatedWidget{
//
//   const AnimatedLogo(Animation<double> animation, {Key? key})
//       : super(key: key, listenable: animation);
//
//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable as Animation<double>;
//     return Center(
//       child: SizedBox(
//         height: animation.value,
//         width: animation.value,
//         child: const FlutterLogo(),
//       ),
//     );
//   }
//
// }

class GrowTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  const GrowTransition({Key? key, required this.child, required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}

