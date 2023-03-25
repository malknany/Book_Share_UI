import 'package:bookshare/views/discover/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem(
      {Key? key,
      required this.controller,
      required this.index,
      required this.item})
      : super(key: key);
  final BookController controller;
  final int index, item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: 150.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 15,
            child: Image.asset(
              controller.book[index + item].img,
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Expanded(
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
          Expanded(
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
