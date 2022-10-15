import 'package:bookshare/views/splash/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/method_helper.dart';

void main() {
  runApp(const MyBookShare());
}

class MyBookShare extends StatelessWidget {
  const MyBookShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        navigatorKey: navigateKey,
        title: 'Book Share',
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child: const SplashScreen(),
    );
  }
}
