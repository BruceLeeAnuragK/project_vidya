import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_vidya/component/drawer_component.dart';
import 'package:project_vidya/view/screen/home/components/Student_Component/student_badges_page.dart';
import 'package:provider/provider.dart';

import '../../AI/page/select_chat_page.dart';
import '../../Register/model/user_model.dart';
import '../components/Student_Component/s_home_component.dart';
import '../controller/stud_home_navigation_bar_provider.dart';

class StudentHomePage extends StatefulWidget {
  StudentHomePage({Key? key}) : super(key: key);

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _StudentHomePageState extends State<StudentHomePage> {
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
      Icons.home_outlined,
      color: Color(0xff4470CD),
    ),
    Icon(
      Icons.chat_outlined,
      color: Color(0xff4470CD),
    ),
    Icon(
      Icons.card_giftcard_outlined,
      color: Color(0xff4470CD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final List<Widget> pages = [
      SHomeComponent(),
      SelectChatpage(),
      BadgesPage(),
    ];
    User? user = Get.arguments;
    return Consumer<StudNavigationBarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          extendBody: true,
          key: _scaffoldKey,
          endDrawer: MyDrawer(),
          body: pages[provider.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            key: navigationKey,
            backgroundColor: Color(0xff3C2DE1),
            index: currentIndex,
            items: navigationItems,
            height: 60,
            onTap: (index) {
              provider.changeCurrentIndex(index);
            },
          ),
        );
      },
    );
  }
}
