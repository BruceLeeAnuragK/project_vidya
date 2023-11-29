import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

class EnglishTopicPage extends StatelessWidget {
  EnglishTopicPage({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> Englishtopic = <String>[
    "The Wind and the Sun",
    "Funny Bunny",
    "Make it Shorter",
    "The Magic Porridge Pot",
    "Storm in the Garden",
    "Curlylocks and the Three Bears",
    "The Mumbai Musicians",
    "The Grasshopper and the Ant",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffB8b8d2),
        title: Text(
          "Topic : ",
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
          itemCount: Englishtopic.length,
          itemBuilder: (context, index) => Card(
            color: Color(0xff3D5CFF),
            child: ListTile(
              onTap: () {
                Get.toNamed(MyRoutes.exercisePage);
              },
              title: Text(
                Englishtopic[index],
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
