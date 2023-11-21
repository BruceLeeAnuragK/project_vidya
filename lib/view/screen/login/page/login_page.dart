import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String val = Get.arguments;
    if (val == "Student") {
      return Scaffold(
        body: Column(
          children: [],
        ),
      );
    } else if (val == "Teacher") {
      return Scaffold();
    } else {
      return Scaffold();
    }
  }
}
