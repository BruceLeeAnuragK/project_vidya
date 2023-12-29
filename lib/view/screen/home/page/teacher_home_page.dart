import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../component/drawer_component.dart';
import '../../../../helper/auth_helper.dart';
import '../../../../helper/firestore_helper.dart';
import '../../../../utils/route_utils.dart';
import '../../Register/model/user_model.dart';

class TeacherHomePage extends StatefulWidget {
  const TeacherHomePage({Key? key}) : super(key: key);

  @override
  State<TeacherHomePage> createState() => _TeacherHomePageState();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _TeacherHomePageState extends State<TeacherHomePage> {
  @override
  Widget build(BuildContext context) {
    User? user = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => MaterialButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: (user?.image?.isNotEmpty ?? false)
                ? CircleAvatar(
                    foregroundImage: NetworkImage("${user?.image}"),
                    radius: 20,
                  )
                : const Icon(
                    Icons.drag_handle,
                    color: Colors.black,
                  ),
          ),
        ),
        title: Text(
          "Teacher",
          style: GoogleFonts.sofia(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              AuthHelper.authHelper.signOut();
              Get.offNamed('/');
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed('/chat');
            },
            icon: const Icon(
              Icons.chat,
              color: Colors.black,
            ),
          ),
        ],
      ),
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      body: StreamBuilder(
        stream: FireStoreHelper.storeHelper.getUser(),
        builder: (context, snapShot) {
          log("${snapShot.data}");
          if (snapShot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.blue,
                          radius: 40,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Full name :"),
                            Text("School Name :"),
                            Text("GRID :"),
                            Text("Standard :"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "List of Subjects :",
                              style: TextStyle(
                                fontSize: 20,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "Maths",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "Science",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "S.S.T.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "English",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "Hindi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "Gujarati",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: const Text(
                                  "Snaskrit",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else if (snapShot.hasError) {
            return const Center(
              child: Text("no docs"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
