import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../helper/auth_helper.dart';
import '../../../../helper/firestore_helper.dart';
import '../../Register/model/user_model.dart';

class StudentHomePage extends StatelessWidget {
  StudentHomePage({Key? key}) : super(key: key);
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
                : Icon(
                    Icons.format_list_bulleted,
                    color: Colors.black,
                  ),
          ),
        ),
        title: Text(
          "Student",
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
            icon: Icon(
              Icons.chat,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage("${user?.image}"),
              ),
              accountName: Text("${user?.name ?? 'Anonymous'} "),
              accountEmail: Visibility(
                visible: user != null,
                child: Text("${user?.email ?? 'n0@gmail.com'}"),
              ),
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: FireStoreHelper.storeHelper.getUser(),
        builder: (context, snapShot) {
          log("${snapShot.data}");
          if (snapShot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.blue,
                          radius: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
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
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
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
                                child: Text(
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
                                child: Text(
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
                                child: Text(
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
                              onPressed: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: double.infinity,
                                child: Text(
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
                                child: Text(
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
                                child: Text(
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
                                child: Text(
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
