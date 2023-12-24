import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SHomeComponent extends StatelessWidget {
  SHomeComponent({super.key});
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
              Color(0xff4471CE),
              Color(0xff5A44C3),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.5,
              child: ListView(
                children: [
                  Gap(50),
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
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff4471CE),
                            Color(0xff5A44C3),
                          ],
                        ),
                      ),
                      child: TextFormField(
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
                          hintText: "Search Here",
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: DropdownMenu(
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
                      trailingIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
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
                  ),
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Select Your Sybjects : ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 3 / 1,
                  ),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 151,
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
            ),
          ],
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
