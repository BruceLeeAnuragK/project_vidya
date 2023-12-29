import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../component/drawer_component.dart';

class SettingPage extends StatefulWidget {
  SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>
    with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  TextEditingController searchController = TextEditingController();

  List<String> stdList = <String>[
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

  List<String> subList = <String>[
    "English",
    "Maths",
    "E.N.V.",
    "S.S",
    "Hindi",
    "Gujarati",
    "Sanskrit",
    "Computer",
    "G.K.",
    "Biology",
    "Chemistry",
    "Physics",
  ];
  List<Widget> drawerWidgets = [
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Settings",
      ),
      subtitle: Text(
        "Change your details",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Language",
      ),
      subtitle: Text(
        "Switch chosen language",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Game",
      ),
      subtitle: Text(
        "Cooper Christin",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Image Generator",
      ),
      subtitle: Text(
        "Generate Images through our AI",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Animated Videos",
      ),
      subtitle: Text(
        "Learn through animated videos",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Animated Videos",
      ),
      subtitle: Text(
        "Learn through animated videos",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff5B93E6),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _scaffoldKey.currentState!.openEndDrawer();
              });
            },
            icon: Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0,
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff5B93E6),
              Color(0xff3C2DE1),
              Color(0xff3C2DE1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Container(
                height: size.height * 0.45,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3C2DE1),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Name",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Cooper Christin",
                        style: GoogleFonts.poppins(
                          color: Color(0xff93A3FA),
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "E-mail",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "cooperchristin20@gmail.com",
                        style: GoogleFonts.poppins(
                          color: Color(0xff93A3FA),
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.key_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Password",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Updated 2 weeks ago",
                        style: GoogleFonts.poppins(
                          color: Color(0xff93A3FA),
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.smartphone_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Phone-Number",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "+91 8466738456",
                        style: GoogleFonts.poppins(
                          color: Color(0xff93A3FA),
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3C2DE1),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.star_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Scoreboard",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.rectangle_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "New Courses",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.notification_important_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Study Reminder",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Container(
                height: size.height * 0.2,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3C2DE1),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.person_3_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Help Center",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff93A3FA),
                        child: Icon(
                          Icons.privacy_tip_sharp,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Privacy & Terms",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// height: 50,
// width: 151,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// border: Border.all(
// color: Colors.white,
// ),
// gradient: LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [
// Color(0xff4471CE),
// Color(0xff5A44C3),
// ],
// ),
// ),
// alignment: Alignment.center,
// child: Text(
// "Maths",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {
// Get.toNamed(MyRoutes.englishPage);
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "English",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Biology",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Computer",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {
// Get.toNamed(MyRoutes.physicsPage);
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Physics",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Chemistry",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
