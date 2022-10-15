import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/const_color.dart';

class WidgetThere extends StatelessWidget {
  const WidgetThere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 324.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Night Mode',
            ),
            leading: CircleAvatar(backgroundColor: Colors.black),
          ),
          Divider(color: MyColor.myColorDivider, height: 2),
          ListTile(
            title: const Text('Notification'),
            leading: Icon(
              Icons.notifications,
              color: MyColor.myPink,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            height: 2,
          ),
          ListTile(
            title: const Text('Language'),
            leading: Icon(
              Icons.language,
              color: MyColor.myPink,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 0,
            height: 2,
          ),
          ListTile(
            title: const Text('Help '),
            leading: Icon(
              Icons.help,
              color: MyColor.myPink,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 0,
            height: 2,
          ),
          ListTile(
            title: const Text('Sign Out'),
            leading: Icon(
              Icons.logout,
              color: MyColor.myPink,
            ),
          ),
        ],
      ),
    );
  }
}
