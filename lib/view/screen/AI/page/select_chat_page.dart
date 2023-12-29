import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';
import 'package:project_vidya/utils/route_utils.dart';

import '../../../../component/drawer_component.dart';

class SelectChatpage extends StatefulWidget {
  const SelectChatpage({super.key});

  @override
  State<SelectChatpage> createState() => _SelectChatpageState();
}

class _SelectChatpageState extends State<SelectChatpage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff5B93E6),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.topCenter,
            child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(
                Icons.grid_view_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
        title: Text(
          " Choose Your Chat partner",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
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
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset(ImgPath.path + ImgPath.chatbotgif),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed(MyRoutes.chatPage);
                  });
                },
                child: Container(
                  height: 50,
                  width: 327,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Color(0xff3C2DE1),
                  ),
                  child: Text(
                    "Chat AI",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset(ImgPath.path + ImgPath.chatteachergif),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context)
                        .pushNamed(MyRoutes.chatWithTeacherPage);
                  });
                },
                child: Container(
                  height: 50,
                  width: 327,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Color(0xff3C2DE1),
                  ),
                  child: Text(
                    "Chat with your Teacher",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset(ImgPath.path + ImgPath.chatannonimouselygif),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context)
                        .pushNamed(MyRoutes.chatAnonymouselyPage);
                  });
                },
                child: Container(
                  height: 50,
                  width: 327,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Color(0xff3C2DE1),
                  ),
                  child: Text(
                    "Chat Anonymously",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Gap(50),
          ],
        ),
      ),
    );
  }
}
