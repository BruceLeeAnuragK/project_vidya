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
  List<bool> answer = [];
  Future<void> setAnswer() async {
    List? tmp = await ApiHelper.apiHelper.assign();
    answer = List.generate(tmp!.length, (index) => false);
  }

  @override
  void initState() {
    super.initState();
    setAnswer();
  }

  @override
  Widget build(BuildContext context) {
    User? user = Get.arguments;
    TextEditingController answerController = TextEditingController();
    bool seeAnswer = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB8b8d2),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Exercise",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
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
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff3d5cff).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "${index + 1} : ${data[index]['question']}",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // ...List.generate(
                      //     data[index]['images'].length,
                      //     (index2) => data[index]['images'][index2]
                      //             ['question']
                      //         ? Image.network(
                      //             data[index]['images'][index2]['img'])
                      //         : const Text(" ")),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                          keyboardType: TextInputType.multiline,
                          controller: answerController,
                          onFieldSubmitted: (val) {},
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              answer[index] = !answer[index];
                            },
                          );
                        },
                        child: const Text(
                          "See Answer",
                          style: TextStyle(
                              color: Color(0xff3d5cff),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      answer[index]
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    10,
                                  ),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Answer :\n${data[index]['answer']}",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff3d5cff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const Text(" "),
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
              child: CircularProgressIndicator(
                color: Color(0xff3d5cff),
              ),
            );
          }
        },
      ),
    );
  }
}
