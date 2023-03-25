import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultSlider extends StatelessWidget {
  const DefaultSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          SizedBox(
            height: 100,
            width: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Image.asset(
                    'assets/image/book/1.png',
                    //height: 80.h,
                    //width: 100.w,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(
                  child: Text(
                    'Fatherhood',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Image.asset(
                    'assets/image/book/2.png',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(
                  child: Text(
                    'Fatherhood',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    'assets/image/book/3.png',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(
                  child: Text(
                    'Fatherhood',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    'assets/image/book/4.png',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(
                  child: Text(
                    'Fatherhood',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset('assets/image/book/5.png',
                      height: 110.h, width: 100.w),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(
                  child: Text(
                    'Fatherhood',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
        options: CarouselOptions(
          height: 150,
          aspectRatio: 0.9,
          viewportFraction: 0.5,
          initialPage: 1,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          //enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
