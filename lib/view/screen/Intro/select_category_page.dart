import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colour_utils.dart';
import '../../../utils/route_utils.dart';

class SelectCategoryPage extends StatefulWidget {
  SelectCategoryPage({super.key});

  @override
  State<SelectCategoryPage> createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  bool student = false;

  bool teacher = false;

  bool tutionteacher = false;

  bool parent = false;

  bool principal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Category :",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: MyColors.appTitle,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: MyColors.btnColor,
            weight: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                student = true;
                teacher = false;
                tutionteacher = false;
                parent = false;
                principal = false;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  color: const Color(0xff3d5cff),
                  border: student
                      ? Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 2,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Student",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                teacher = true;
                student = false;
                tutionteacher = false;
                parent = false;
                principal = false;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  color: const Color(0xff3d5cff),
                  border: teacher
                      ? Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 2,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Teacher",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                tutionteacher = true;
                student = false;
                teacher = false;
                parent = false;
                principal = false;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  border: tutionteacher
                      ? Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 2,
                        )
                      : null,
                  color: const Color(0xff3d5cff),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Tuition Teacher",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                parent = true;
                student = false;
                teacher = false;
                tutionteacher = false;
                principal = false;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  border: parent
                      ? Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                      : null,
                  color: const Color(0xff3d5cff),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Parents",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                principal = true;
                student = false;
                teacher = false;
                tutionteacher = false;
                parent = false;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  color: const Color(0xff3d5cff),
                  border: principal
                      ? Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 2,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Principal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 327,
                  decoration: BoxDecoration(
                    color: const Color(0xff3d5cff),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 90),
                      GestureDetector(
                        onTap: () {
                          if (student) {
                            Get.toNamed(MyRoutes.studHome);
                          } else if (teacher) {
                            Get.toNamed(MyRoutes.teacherHome);
                          } else if (tutionteacher) {
                            Get.toNamed(MyRoutes.parentsHome);
                          } else if (parent) {
                            Get.toNamed(MyRoutes.parentsHome);
                          } else if (principal) {
                            Get.toNamed(MyRoutes.parentsHome);
                          } else {
                            Get.snackbar("Access Denied",
                                "Select any Category to Continue",
                                backgroundColor: Colors.red);
                          }
                        },
                        child: const Text(
                          "CONTINUE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 90),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
