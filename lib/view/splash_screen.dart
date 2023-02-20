import 'package:chatgpt/theme.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000)).then((value) {
      Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ChatScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.bounceOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBg500Color,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                width: width * 0.8,
                "assets/top-bg-splash.png",
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                width: width * 0.7,
                "assets/bot_bg_splash.png",
              ),
            ),
            Center(
              child: Image.asset(
                "assets/logo.png",
                height: 65,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
