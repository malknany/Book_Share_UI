// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/const_color.dart';
import '../controller.dart';

class ItemBookInfoScreen extends StatelessWidget {
  ItemBookInfoScreen(
      {Key? key,
      required this.controller,
      required this.index,
      required this.count})
      : super(key: key);
  StoreController controller;
  int index, count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(
            controller.bookInfo[index].img,
          ),
          SizedBox(width: 8.6.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.bookInfo[index].title,
                style:  TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xff242126),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                controller.bookInfo[index].subTitle,
                style: TextStyle(fontSize: 12.sp, color: MyColor.myBlack),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: index < count
                              ? MyColor.myPink
                              : const Color(0xff212121),
                        )),
              ),
              Text(controller.bookInfo[index].description,
                  style: TextStyle(fontSize: 10.sp, color: MyColor.myBlack),
                  overflow: TextOverflow.ellipsis),
               SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.w, 29.h),
                      backgroundColor: const Color(0xffFF6EA1),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),),
                    ),
                    child:  Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 10.sp, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.w, 29.h),
                      backgroundColor: Colors.white,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      shadowColor: const Color(0xff767676),
                    ),
                    child:  Text(
                      'Add to wishlist',
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
