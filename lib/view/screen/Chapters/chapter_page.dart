import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

class ChapterPage extends StatelessWidget {
  ChapterPage({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> phyicsCh = <String>[
    "Electric Charges and Field",
    "Electrostatic Potential and Capacitance",
    "Current Electricity",
    "Moving Charges and Magnetism",
    "Magnetism and Matter",
    "Electromagnetic",
    "Alternating Current",
    "Work",
    "Waves",
    "Energy",
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
          itemCount: phyicsCh.length,
          itemBuilder: (context, index) => Card(
            color: Color(0xff3D5CFF),
            child: ListTile(
              onTap: () {},
              title: Text(
                phyicsCh[index],
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