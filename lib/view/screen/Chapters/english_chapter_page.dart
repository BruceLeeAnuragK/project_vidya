import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

import '../../../helper/api_helper.dart';

class EnglishChapterPage extends StatelessWidget {
  EnglishChapterPage({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffB8b8d2),
        title: Text(
          "Chapter : ",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: const Color(0xFF1F1F39),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
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
        child: FutureBuilder(
            future: ApiHelper.apiHelper.assignAll(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                Map? data = snapShot.data;
                List chapters = data!['chapters'];
                return ListView.builder(
                  itemCount: chapters.length,
                  itemBuilder: (context, index) => Card(
                    color: const Color(0xff3d5cff),
                    child: ListTile(
                      onTap: () {
                        Get.toNamed(MyRoutes.englishstopicPage);
                      },
                      title: Text(
                        "Ch: ${chapters[index]['ch'].toString()}",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              } else if (snapShot.hasError) {
                return Center(
                  child: Text(snapShot.error.toString()),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff3d5cff),
                  ),
                );
              }
            }),
      ),
    );
  }
}
