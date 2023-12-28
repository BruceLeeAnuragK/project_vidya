import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/route_utils.dart';

class PriHomeComponent extends StatefulWidget {
  PriHomeComponent({super.key});

  @override
  State<PriHomeComponent> createState() => _PriHomeComponentState();
}

class _PriHomeComponentState extends State<PriHomeComponent> {
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

  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
            ),
          )
        ],
        title: Text(
          "Details of Teacher",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Container(
                height: size.height * 0.20,
                width: size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "School Name",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Email ID",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Mark Methew",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Brilliant English School",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "markmethew70@gmail.com",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Category",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownMenu(
                    inputDecorationTheme: InputDecorationTheme(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                        maxHeight: size.height * 100,
                      ),
                      contentPadding: EdgeInsets.all(
                        10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    initialSelection: dropdownValue,
                    trailingIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    dropdownMenuEntries: stdList.map<DropdownMenuEntry<String>>(
                      (String value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      },
                    ).toList(),
                    onSelected: (String? val) {
                      dropdownValue = val!;
                    },
                  ),
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Text(
                      "Select Teacher",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownMenu(
                    inputDecorationTheme: InputDecorationTheme(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                        maxHeight: size.height * 100,
                      ),
                      contentPadding: EdgeInsets.all(
                        10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    initialSelection: dropdownValue,
                    trailingIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    dropdownMenuEntries: stdList.map<DropdownMenuEntry<String>>(
                      (String value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      },
                    ).toList(),
                    onSelected: (String? val) {
                      dropdownValue = val!;
                    },
                  ),
                ],
              ),
              Gap(40),
              Padding(
                padding: const EdgeInsets.only(right: 17, left: 17),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context)
                          .pushReplacementNamed(MyRoutes.progressReportTeacher);
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 327,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffFFFFFF),
                        width: 1,
                      ),
                      color: Color(0xff3C2DE1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
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
