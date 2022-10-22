// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller.dart';

class ContainerWithColor extends StatelessWidget {
  ContainerWithColor({Key? key, required this.index, required this.controller})
      : super(key: key);
  final LibraryController controller;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.w,
      height: 202.h,
      decoration: BoxDecoration(
        color: controller.bookInfo[index].myColor,
        borderRadius: BorderRadius.circular(15.r)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 23.h,
          ),
          Text(
            controller.bookInfo[index].title,
            style:  TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Image.asset(controller.bookInfo[index].img,
              width: 75.5.w, height: 118.66.h),
        ],
      ),
    );
  }
}
