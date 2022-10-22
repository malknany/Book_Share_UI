import 'package:bookshare/views/discover/widget/item_book.dart';
import 'package:bookshare/views/discover/widget/item_slider.dart';
import 'package:bookshare/views/discover/widget/item_topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/const/const_color.dart';
import '../../componant/searsh_bar.dart';
import '../topics/cntroller.dart';
import 'controller.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final controller = TopicsController();
  final controller2 = BookController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/image/backgroundBar2.png',
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: 320.h,
                  ),
                  const SearchBar(),
                  Container(
                    margin: EdgeInsets.only(left: 16.5.w, top: 70.h),
                    child:  Text(
                      'Our Top Picks',
                      style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 120.0),
                    child: DefaultSlider(),
                  )
                ],
              ),
              SizedBox(
                height: 20.9.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      controller.topic.length,
                      (index) => TopicsItemHome(
                            controller: controller,
                            index: index,
                          )),
                ),
              ),
              SizedBox(
                height: 20.9.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 16.h),
                width: double.infinity,
                child: Text(
                  'Trending Books',
                  style: TextStyle(
                    color: MyColor.myBlack,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 14.5.h,
              ),
              Wrap(
                spacing: 13.5,
                runSpacing: 14.2,
                children: List.generate(
                  controller2.book.length - 6,
                  (index) => Image.asset(controller2.book[index].img),
                ),
              ),
              SizedBox(
                height: 37.2.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 16.h),
                width: double.infinity,
                child: Text(
                  'Best Share',
                  style: TextStyle(
                    color: MyColor.myBlack,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    controller2.book.length - 9,
                    (index) => BookDetailsItem(
                        controller: controller2, index: index, item: 6),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 16.h),
                width: double.infinity,
                child: Text(
                  'Recently Viewed',
                  style: TextStyle(
                    color: MyColor.myBlack,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    controller2.book.length - 9,
                    (index) => BookDetailsItem(
                        controller: controller2, index: index, item: 9),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
