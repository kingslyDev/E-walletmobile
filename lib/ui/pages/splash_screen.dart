import 'dart:async';

import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          width: 200,
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
