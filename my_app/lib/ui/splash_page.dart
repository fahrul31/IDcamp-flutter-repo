import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/ui/onboard_page.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash_page';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, OnboardPage.routeName));
    return const Scaffold(
      body: Center(),
    );
  }
}
