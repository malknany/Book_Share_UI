import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/const_color.dart';

class WidgetTow extends StatelessWidget {
  const WidgetTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 324.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          ListTile(
            title: const Text('My Cart'),
            leading: Icon(
              Icons.shopping_cart,
              color: MyColor.myPink,
            ),
          ),
          Divider(color: MyColor.myColorDivider, height: 2.r),
          ListTile(
            title: const Text('Purchases'),
            leading: Icon(
              Icons.credit_card,
              color: MyColor.myPink,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            height: 2.h,
          ),
          ListTile(
            title: const Text('Account'),
            leading: Icon(
              Icons.person,
              color: MyColor.myPink,
            ),
          ),
        ],
      ),
    );
  }
}
