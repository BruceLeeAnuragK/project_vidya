import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../helper/auth_helper.dart';
import '../../Register/model/user_model.dart';

class TopicPage extends StatelessWidget {
  TopicPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    User? user = Get.arguments;
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
