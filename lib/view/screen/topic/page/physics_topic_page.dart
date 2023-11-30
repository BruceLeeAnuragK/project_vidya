import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PhysicsTopicPage extends StatelessWidget {
  PhysicsTopicPage({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> phyicsCh = <String>[
    "Electric Charge",
    "Conductors and Insulators",
    "Charging by Induction",
    "Basic Properties of Electric Charge",
    "Forces between Multiple Charges",
    "Electric Field",
    "Electric Field Lines",
    "Electric Flux",
    "Waves",
    "Energy",
  ];
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
        child: ListView.builder(
          itemCount: phyicsCh.length,
          itemBuilder: (context, index) {
            return Card(
              color: const Color(0xff3D5CFF),
              child: ListTile(
                onTap: () {},
                title: Text(
                  phyicsCh[index],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
