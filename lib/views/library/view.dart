import 'package:bookshare/componant/searsh_bar.dart';
import 'package:bookshare/views/library/widget/continare_book_with_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  //bool isSelect = true;
  final controller = LibraryController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBar(),
            SizedBox(
              height: 31.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Text(
                  'General',
                  style: TextStyle(
                      color: const Color(0xffFF6EA1),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'New',
                  style: TextStyle(
                    color: const Color(0xff242126),
                    fontSize: 24.sp,
                  ),
                ),
                Text(
                  'Most Viewed',
                  style: TextStyle(
                    color: const Color(0xff242126),
                    fontSize: 24.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            Wrap(
              runSpacing: 20,
              spacing: 20,
              children: List.generate(
                  controller.bookInfo.length,
                  (index) => ContainerWithColor(
                        index: index,
                        controller: controller,
                      ),),
            )
          ],
        ),
      ),
    );
  }
}
