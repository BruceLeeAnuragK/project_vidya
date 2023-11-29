import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Register/model/user_model.dart';

class ExercisePage extends StatefulWidget {
  ExercisePage({Key? key}) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    User? user = Get.arguments;
    TextEditingController answerController = TextEditingController();
    bool seeAnswer = false;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          "Exercise",
          style: GoogleFonts.sofia(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.shade400.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text("Question ${index + 1}"),
              TextFormField(
                keyboardType: TextInputType.multiline,
                controller: answerController,
                onFieldSubmitted: (val) {},
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    seeAnswer = true;
                  });
                },
                child: Text("See Answer"),
              ),
              seeAnswer ? Text("") : Text("Answer${index + 1}"),
            ],
          ),
        ),
      ),
    );
  }
}
