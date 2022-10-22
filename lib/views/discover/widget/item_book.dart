import 'package:bookshare/views/discover/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsItem extends StatelessWidget {
  BookDetailsItem(
      {Key? key,
      required this.controller,
      required this.index,
      required this.item})
      : super(key: key);
  BookController controller;
  int index, item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(controller.book[index + item].img,
              height: 200.h, width: 150.w),
          SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text(
              controller.book[index + item].title,
              style: const TextStyle(
                  color: Color(0xff242126),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text(
              controller.book[index + item].subTitle,
              style: const TextStyle(fontSize: 11, color: Color(0xff212121)),
            ),
          ),
        ],
      ),
    );
  }
}
