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
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade400.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Text("${index + 1} : ${data[index]['question']}"),
                        ),
                        ...List.generate(
                            data[index]['images'].length,
                            (index2) => data[index]['images'][index2]
                                    ['question']
                                ? Image.network(
                                    data[index]['images'][index2]['img'])
                                : const Text(" ")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                            setState(() {
                              answer[index] = !answer[index];
                            });
                          },
                          child: const Text("See Answer"),
                        ),
                        answer[index]
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  child:
                                      Text("Answer : ${data[index]['answer']}"),
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
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
