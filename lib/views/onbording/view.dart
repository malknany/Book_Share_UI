import 'package:bookshare/core/method_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/const/const_color.dart';
import '../topics/view.dart';
import 'controller.dart';

final control = ControllerOnBoarding();

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (_index < 2) {
                      _index++;
                      setState(() {});
                    } else {
                      _index = 2;
                    }
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff969696),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.5.w,
                ),
              ],
            ),
            SizedBox(
              height: 82.h,
            ),
            //onBoarding(index),
            SizedBox(
              width: 250.31.w,
              height: 199.h,
              child: Image.asset(control.onBoarding[_index].img),
            ),
            SizedBox(
              height: 58.7.h,
            ),
            SizedBox(
              height: 54.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.4.w),
                child: Text(
                  control.onBoarding[_index].text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff17191D),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            SizedBox(
              width: 60,
              height: 10,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                    control.onBoarding.length,
                    (index) => CircleAvatar(
                          radius: 10,
                          backgroundColor: MyColor.myPink,
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor:
                                index == _index ? MyColor.myPink : Colors.white,
                          ),
                        )),
              ),
            ),
            SizedBox(height: 25.h),
            _index == 2
                ? ElevatedButton(
                    onPressed: () {
                      navigateTo(
                          page: const TopicsScreen(), withHistory: false);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(184.w, 45.h),
                        backgroundColor: MyColor.myPink,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      )),
    );
  }
}
