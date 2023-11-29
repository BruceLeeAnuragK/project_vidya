import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

class EnglishChapterPage extends StatelessWidget {
  EnglishChapterPage({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> EnglishCh = <String>[
    "First Day at School",
    " I am Lucky! ",
    "A Smile",
    "Rain",
    "Zoo Manners ",
    " Mr Nobody ",
    "On My Blackboard I can Draw",
    "I am the Music Man",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffB8b8d2),
        title: Text(
          "Chapter : ",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF1F1F39),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF1F1F39),
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: EnglishCh.length,
          itemBuilder: (context, index) => Card(
            color: Color(0xff3D5CFF),
            child: ListTile(
              onTap: () {
                Get.toNamed(MyRoutes.englishstopicPage);
              },
              title: Text(
                EnglishCh[index],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
