import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../topics/cntroller.dart';

class TopicsItemHome extends StatelessWidget {
  TopicsItemHome({Key? key, required this.controller, required this.index})
      : super(key: key);
  TopicsController controller;
  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: Image.asset(
            controller.topic[index].img,
          ),
        ),
        SizedBox(
          height: 6.2.h,
        ),
        Text(
          controller.topic[index].text,
          style: const TextStyle(fontSize: 16, color: Color(0xff17191D)),
        ),
      ],
    );
  }
}
