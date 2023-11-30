import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/helper/api_helper.dart';

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
      body: FutureBuilder(
          future: ApiHelper.apiHelper.assign(),
          builder: (context, snap) {
            if (snap.hasData) {
              List? data = snap.data;
              return ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade400.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text("$index : ${data[index]['question']}"),
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
                          child: const Text("See Answer"),
                        ),
                        seeAnswer ? const Text("") : Text("Answer${index + 1}"),
                      ],
                    ),
                  ),
                ),
              );
            } else if (snap.hasError) {
              return Center(
                child: Text(snap.error.toString()),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
