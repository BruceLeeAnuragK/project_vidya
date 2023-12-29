import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/drawer_component.dart';
import '../../Register/model/user_model.dart';
import '../components/Parents_Component/p_home_component.dart';

class ParentsHomePage extends StatelessWidget {
  ParentsHomePage({Key? key}) : super(key: key);
  List<String> stdList = [
    "Std 1",
    "Std 2",
    "Std 3",
    "Std 4",
    "Std 5",
    "Std 6"
        "Std 7"
        "Std 8"
        "Std 9"
        "Std 10"
        "Std 11"
        "Std 12"
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final List<Widget> pages = [
      PHomeComponent(),
      PHomeComponent(),
      PHomeComponent(),
      PHomeComponent(),
    ];
    User? user = Get.arguments;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max_outlined,
              color: Colors.black,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black,
            ),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
              color: Colors.black,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3_outlined,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(
          color: Color(0xff3D5CFF),
        ),
        unselectedLabelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
