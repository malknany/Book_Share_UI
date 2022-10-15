import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            suffixIcon: const ImageIcon(
              AssetImage('assets/image/iconfilt.png'),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xff212121),
            ),
            labelText: 'Search Books, Authors',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
