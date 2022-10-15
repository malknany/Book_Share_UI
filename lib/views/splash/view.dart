import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/method_helper.dart';
import '../onbording/view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      navigateTo(page: const OnBoardingScreen(), withHistory: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/image/background.png'),
            ),
          ),
          child: Center(
            child: Image.asset('assets/image/logo.png'),
          ),
        ),
      ),
    );
  }
}
