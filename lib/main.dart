import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/home_page.dart';
import 'package:bankga/ui/pages/onboarding_page.dart';
import 'package:bankga/ui/pages/pin_page.dart';
import 'package:bankga/ui/pages/profile/profile_page.dart';
import 'package:bankga/ui/pages/register/register_set_identity.dart';
import 'package:bankga/ui/pages/register/register_set_profile.dart';
import 'package:bankga/ui/pages/register/register_success.dart';
import 'package:bankga/ui/pages/register_page.dart';
import 'package:bankga/ui/pages/signin_page.dart';
import 'package:bankga/ui/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/signin': (context) => const SigninPage(),
        '/register': (context) => const RegisterPage(),
        '/registerpic': (context) => const RegisterSetProfile(),
        '/registeridentitiy': (context) => const RegisterSetIdentity(),
        '/registeracc': (context) => const RegisterSuccess(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
      },
    );
  }
}
