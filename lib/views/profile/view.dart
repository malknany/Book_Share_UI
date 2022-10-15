import 'package:bookshare/views/profile/widget/widget_one.dart';
import 'package:bookshare/views/profile/widget/widget_tow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/const/const_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.myColorBackGround,
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WidgetOne(),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: MyColor.myColorTextProfile,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              const WidgetTow(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: MyColor.myColorTextProfile,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
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
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        )),
      ),
    );
  }
}
