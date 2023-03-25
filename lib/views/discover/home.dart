import 'package:bookshare/views/discover/view.dart';
import 'package:flutter/material.dart';

import '../../componant/const/const_color.dart';
import '../library/view.dart';
import '../profile/view.dart';
import '../storae/view.dart';

class HomeDiscoverScreen extends StatefulWidget {
  const HomeDiscoverScreen({Key? key}) : super(key: key);

  @override
  State<HomeDiscoverScreen> createState() => _HomeDiscoverScreenState();
}

class _HomeDiscoverScreenState extends State<HomeDiscoverScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [
    const DiscoverScreen(),
    const LibraryScreen(),
    const Center(
      child: Text('Wishlist'),
    ),
    StoreScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xffE5E5E5),
          selectedItemColor: MyColor.myPink,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_convenience_store_rounded),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile ',
            ),
          ],
        ),
      ),
    );
  }
}
