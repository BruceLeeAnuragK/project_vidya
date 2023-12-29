import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PHomeComponent extends StatelessWidget {
  PHomeComponent({super.key});
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
  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;

    var s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: s.height,
            width: s.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff5B93E6),
                    Color(0xff3C2DE1),
                    Color(0xff3C2DE1),
                  ]),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Details of Your Child",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(30),
                  Container(
                    height: s.height * 0.20,
                    width: s.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(
                                  s.height * 0.007,
                                ),
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                                Gap(
                                  s.height * 0.007,
                                ),
                                Text(
                                  "School Name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                                Gap(
                                  s.height * 0.007,
                                ),
                                Text(
                                  "GR ID",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                                Gap(
                                  s.height * 0.007,
                                ),
                                Text(
                                  "Standard",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(
                                  s.height * 0.015,
                                ),
                                Text(
                                  "Mark Methew",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                Gap(
                                  s.height * 0.015,
                                ),
                                Text(
                                  "Brilliant English School",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                Gap(
                                  s.height * 0.015,
                                ),
                                Text(
                                  "1586",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                Gap(
                                  s.height * 0.015,
                                ),
                                Text(
                                  "12 Science",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Gap(s.height * 0.15),
                  Container(
                    height: s.height * 0.07,
                    width: s.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color(0xff3C2DE1),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                        color: Color(0xffF3F5F9),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
