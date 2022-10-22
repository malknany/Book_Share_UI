import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/const_color.dart';

class WidgetOne extends StatelessWidget {
  const WidgetOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/image/backgroundBar2.png',
          fit: BoxFit.fitHeight,
          width: double.infinity,
          height: 175.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 25.5.w, top: 80.h),
          child:  Text(
            'Mohmed Alkinany',
            style: TextStyle(
              fontSize: 22.sp,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 160),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '21',
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: MyColor.myColorTextProfile,
                        fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Books',
                    style: TextStyle(
                        fontSize: 10.sp, color: MyColor.myColorTextProfile),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '50k',
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: MyColor.myColorTextProfile,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                        fontSize: 10.sp, color: MyColor.myColorTextProfile),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '30',
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: MyColor.myColorTextProfile,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(
                        fontSize: 10.sp, color: MyColor.myColorTextProfile),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 85.0, left: 250),
          child: Column(
            children: [
              SizedBox(
                height: 84.h,
                width: 84.w,
                child: const CircleAvatar(
                  foregroundImage: AssetImage('assets/image/myphoto.jpg'),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    backgroundColor: MyColor.myPink,
                    fixedSize: Size(100.w, 30.h)),
                child:  Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
