import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

class SHomeComponent extends StatefulWidget {
  SHomeComponent({super.key});

  @override
  State<SHomeComponent> createState() => _SHomeComponentState();
}

class _SHomeComponentState extends State<SHomeComponent> {
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
          child: Column(
            children: [
              Column(
                children: [
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi,Cristin",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "What would you like to learn today?",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Search below",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff3C2DE1),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      controller: searchController,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: 60,
                          minWidth: 50,
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                            top: 10,
                            right: 5,
                          ),
                          child: Container(
                            height: 29,
                            width: 35,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: IconButton(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.deepPurple,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        labelText: "Search Here",
                        labelStyle: GoogleFonts.poppins(
                          color: Color(0xffE3E3E3),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DropdownMenu(
                        trailingIcon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                        selectedTrailingIcon: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,
                        ),
                        inputDecorationTheme: InputDecorationTheme(
                          constraints: BoxConstraints(
                            maxWidth: 110,
                            maxHeight: 42,
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
                        dropdownMenuEntries:
                            stdList.map<DropdownMenuEntry<String>>(
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
                    children: [
                      Text(
                        "Select Your Subjects",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 3 / 1,
                  ),
                  itemCount: subList.length,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRoutes.summaryPage);
                      },
                      child: Container(
                        height: 50,
                        width: 151,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: Color(0xff3C2DE1),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          subList[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
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
