import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Profile/profile_page.dart';
import 'package:uidesign/View/Screen/Courses/courses.dart';
import 'package:uidesign/View/Screen/Home/home_page.dart';
import 'package:uidesign/calculator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    Container(),
    PrimaryPage(),
    const BillSplitter(),
    const ProfilePage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          // To fix the whiteness and invisibility, use type:BottomNavigationBarType.fixed
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.grey[200],
          onTap: onTap,
          currentIndex:
              currentIndex, //currentIndex is used to identify the current page
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey[700],
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.group_add_outlined), label: 'Coursemates'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined), label: 'Courses'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: 'Progress'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile')
          ]),
    );
  }
}
