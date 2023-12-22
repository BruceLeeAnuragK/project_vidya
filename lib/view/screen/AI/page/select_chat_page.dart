import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';

class SelectChatpage extends StatefulWidget {
  const SelectChatpage({super.key});

  @override
  State<SelectChatpage> createState() => _SelectChatpageState();
}

class _SelectChatpageState extends State<SelectChatpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xff4471CE),
          elevation: 0,
          centerTitle: true,
          leading: Container(
            alignment: Alignment.topCenter,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            Container(
              alignment: Alignment.topCenter,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.grid_view_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Choose Your Chat",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              children: <TextSpan>[
                TextSpan(
                  text: '\npartner',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
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
              Color(0xff4471CE),
              Color(0xff5A44C3),
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
                  setState(() {});
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
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff4471CE),
                            Color(0xff5A44C3),
                          ])),
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
                  setState(() {});
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
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff4471CE),
                        Color(0xff5A44C3),
                      ],
                    ),
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
                  setState(() {});
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
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff4471CE),
                            Color(0xff5A44C3),
                          ])),
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
          ],
        ),
      ),
    );
  }
}
