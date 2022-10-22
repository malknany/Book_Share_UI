import 'package:bookshare/componant/topics.dart';
import 'package:bookshare/core/method_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/const/const_color.dart';
import '../discover/home.dart';
import 'cntroller.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  final control = TopicsController();
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/image/backgroundBar2.png',
                        fit: BoxFit.fitHeight,
                        width: double.infinity,
                        height: 175.h),
                    Container(
                      margin: EdgeInsets.only(left: 25.5.w, top: 25.h),
                      child:  Text(
                        'Welcome \n Choose the topics',
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                TopicItem(control: control),
                SizedBox(
                  height: 33.3.h,
                ),
                Text(
                  'More Topics',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: MyColor.myPink,
                    decoration: TextDecoration.underline,
                    decorationColor: MyColor.myPink,
                  ),
                ),
                SizedBox(
                  height: 16.3.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateTo(page: const HomeDiscoverScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    backgroundColor: MyColor.myPink,
                    fixedSize: Size(327.w, 45.h),
                  ),
                  child:  Text(
                    'Apply',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
