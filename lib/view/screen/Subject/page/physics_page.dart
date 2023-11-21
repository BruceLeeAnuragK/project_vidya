import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Register/model/user_model.dart';
import '../../home/components/Student_Component/home_component.dart';
import '../component/PhysicsComponent/select_physic_book.dart';

class PhysicsPage extends StatelessWidget {
  PhysicsPage({Key? key}) : super(key: key);
  List<String> stdList = [
    "Std 1"
        "Std 2"
        "Std 3"
        "Std 4"
        "Std 5"
        "Std 6"
        "Std 7"
        "Std 8"
        "Std 9"
        "Std 10"
        "Std 11"
        "Std 12"
  ];
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final List<Widget> pages = [
      SelectPhysicsComponent(),
      SelectPhysicsComponent(),
      SelectPhysicsComponent(),
      SelectPhysicsComponent(),
    ];
    User? user = Get.arguments;
    return Scaffold(
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage("${user?.image}"),
              ),
              accountName: Text("${user?.name ?? 'Anonymous'} "),
              accountEmail: Visibility(
                visible: user != null,
                child: Text("${user?.email ?? 'n0@gmail.com'}"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
