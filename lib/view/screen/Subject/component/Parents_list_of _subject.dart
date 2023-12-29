import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/route_utils.dart';

class PSubjects extends StatelessWidget {
  PSubjects({super.key});
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

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Of Subjects :",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color(0xff3D5CFF),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Select Your Sybjects : ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3D5CFF),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    child: const Text(
                      "Maths",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3D5CFF),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    child: const Text(
                      "Biology",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3D5CFF),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    child: const Text(
                      "Computer",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {
                    Get.toNamed(MyRoutes.physicsPage);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3D5CFF),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    child: const Text(
                      "Physics",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3D5CFF),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    child: const Text(
                      "Chemistry",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Get.toNamed(MyRoutes.parentsSubject);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3D5CFF),
                ),
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Continue to Get",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
