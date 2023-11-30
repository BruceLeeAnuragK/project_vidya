import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/helper/api_helper.dart';
import 'package:project_vidya/utils/route_utils.dart';

class EnglishTopicPage extends StatelessWidget {
  EnglishTopicPage({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffB8b8d2),
        title: Text(
          "Topic : ",
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
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Map? data = snapshot.data;
                List topics = data!['chapters'][0]['part'][0]['topics'];
                log(topics.toString());
                return ListView.builder(
                  itemCount: data['chapters'][0]['part'][0]['topics'].length,
                  itemBuilder: (context, index) => Card(
                    color: const Color(0xff3D5CFF),
                    child: ListTile(
                      onTap: () {
                        Get.toNamed(MyRoutes.exercisePage);
                      },
                      title: Text(
                        topics[index]['name'],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
