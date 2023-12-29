import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/drawer_component.dart';
import '../../AI/page/select_chat_page.dart';
import '../../Register/model/user_model.dart';
import '../components/Principal_Component/pri_home_component.dart';
import '../components/Student_Component/s_home_component.dart';

class PrincipalHomePage extends StatefulWidget {
  PrincipalHomePage({Key? key}) : super(key: key);

  @override
  State<PrincipalHomePage> createState() => _PrincipalHomePageState();
}

class _PrincipalHomePageState extends State<PrincipalHomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  List<String> stdList = [
    "Std 1",
    "Std 2",
    "Std 3",
    "Std 4",
    "Std 5",
    "Std 6",
    "Std 7",
    "Std 8",
    "Std 9",
    "Std 10",
    "Std 11",
    "Std 12",
  ];
  final navigationItems = <Widget>[
    Icon(
      Icons.home,
      color: Color(0xff4470CD),
    ),
    Icon(
      Icons.chat_outlined,
      color: Color(0xff4470CD),
    ),
    Icon(
      Icons.card_giftcard,
      color: Color(0xff4470CD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final List<Widget> pages = [
      PriHomeComponent(),
      SelectChatpage(),
      SHomeComponent(),
    ];
    User? user = Get.arguments;
    return Scaffold(
      endDrawer: MyDrawer(),
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        backgroundColor: Colors.transparent,
        index: currentIndex,
        items: navigationItems,
        height: 60,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
