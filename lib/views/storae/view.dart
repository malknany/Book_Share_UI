import 'package:bookshare/componant/searsh_bar.dart';
import 'package:bookshare/views/storae/widget/item_book_info.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class StoreScreen extends StatelessWidget {
  StoreScreen({Key? key}) : super(key: key);
  final controller = StoreController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBar(),
            Column(
              children: List.generate(
                controller.bookInfo.length,
                (index) => ItemBookInfoScreen(
                    controller: controller, index: index, count: 3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
