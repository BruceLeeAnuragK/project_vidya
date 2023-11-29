import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_vidya/helper/firestore_helper.dart';
import 'package:project_vidya/utils/route_utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hide = true;

  List<String> stdList = [
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
        leading: Container(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xff1F1F39),
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your details below &\nfree sign up",
                        style: TextStyle(
                          color: Color(0xffB8B8D2),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Email",
                      style: TextStyle(
                        color: Color(0xff858597),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  strutStyle: StrutStyle.disabled,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Color(0xff858597),
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Phone Number",
                      style: TextStyle(
                        color: Color(0xff858597),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  strutStyle: StrutStyle.disabled,
                  decoration: InputDecoration(
                    hintText: "Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Color(0xff858597),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  obscureText: true,
                  strutStyle: StrutStyle.disabled,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        hide = !hide;
                      },
                      icon: hide
                          ? Icon(Icons.visibility_outlined)
                          : Icon(Icons.visibility_off_outlined),
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRoutes.loginPage);
                    },
                    child: Container(
                      height: 50,
                      width: 327,
                      decoration: BoxDecoration(
                        color: Color(0xff3d5cff),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "CREATE ACCOUNT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                StreamBuilder(
                  stream: FireStoreHelper.storeHelper.getSchoolList(),
                  builder: (context, snap) {
                    DocumentSnapshot<Map<String, dynamic>>? doc = snap.data;
                    log(doc.toString());
                    Map<String, dynamic>? data = doc?.data();
                    List school = data?['list'];
                    return (snap.hasData)
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownMenu(
                                    initialSelection: dropdownValue,
                                    dropdownMenuEntries: school
                                        .map<DropdownMenuEntry<String>>((e) {
                                      return DropdownMenuEntry<String>(
                                        value: e,
                                        label: e,
                                      );
                                    }).toList(),
                                    onSelected: (val) {
                                      dropdownValue = val!;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../../helper/firestore_helper.dart';
// import '../controller/register_controller.dart';
// import '../model/user_model.dart';
//
// class RegisterPage extends StatelessWidget {
//   RegisterPage({Key? key}) : super(key: key);
//   RegisterController controller = Get.put(RegisterController());
//   final usernameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   GlobalKey<FormState> RegisterPageKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Center(
//                     child: Text(
//                       "Fastest Delivery",
//                       style: TextStyle(
//                         color: Colors.blue.shade900,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Center(
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20, right: 20),
//                       child: Text(
//                         "We care about customer first.After submitting order,",
//                         style: TextStyle(
//                           color: Colors.blue.shade100,
//                           fontSize: 10,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: Text(
//                       "you will get your product within 30 mins.",
//                       style: TextStyle(
//                         color: Colors.blue.shade100,
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Form(
//                     key: RegisterPageKey,
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: TextFormField(
//                             controller: usernameController,
//                             keyboardType: TextInputType.name,
//                             validator: (val) {
//                               if (val!.isEmpty) {
//                                 "Enter the User name.";
//                               } else if (val.length > 6) {
//                                 "Enter only 6 digit username.";
//                               } else if (val.isAlphabetOnly) {
//                                 "Write Alphabets only in Your Name";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Colors.blue.shade900,
//                                 ),
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.person,
//                                 color: Colors.blue.shade900,
//                               ),
//                               suffixIconColor: Colors.blue,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: const BorderSide(
//                                   color: Colors.blue,
//                                   width: 3,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: TextFormField(
//                             controller: emailController,
//                             validator: (val) {
//                               if (val!.isEmpty) {
//                                 "Enter the your Email here.";
//                               } else if (val.length > 6) {
//                                 "Enter only 6 digit username";
//                               } else if (val.endsWith("gmail.com")) {
//                                 "Write the proper Email Address";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Colors.blue.shade900,
//                                 ),
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: Colors.blue.shade900,
//                               ),
//                               suffixIconColor: Colors.blue,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: const BorderSide(
//                                   color: Colors.blue,
//                                   width: 3,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: TextFormField(
//                             controller: passwordController,
//                             validator: (val) {
//                               if (val!.isEmpty) {
//                                 "Enter the your Email here.";
//                               } else if (val.length > 6) {
//                                 "Enter only 6 digit username";
//                               } else if (val.endsWith("gmail.com")) {
//                                 "Write the proper Email Address";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Colors.blue.shade900,
//                                 ),
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: Colors.blue.shade900,
//                               ),
//                               suffixIconColor: Colors.blue,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: const BorderSide(
//                                   color: Colors.blue,
//                                   width: 3,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     height: 60,
//                     shape: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                       borderSide: BorderSide(
//                         color: Colors.blue.shade900,
//                       ),
//                     ),
//                     color: Colors.blue.shade900,
//                     onPressed: () async {
//                       await FireStoreHelper.storeHelper.addUser(
//                         userModel: UserModel(
//                           username: usernameController.text,
//                           email: emailController.text,
//                         ),
//                       );
//                       Get.toNamed("/HomePage");
//                       if (RegisterPageKey.currentState!.validate()) {
//                         controller.OnSubmit(
//                             usernameController.text, emailController.text);
//                         usernameController.clear();
//                         emailController.clear();
//                       } else {
//                         "not saved";
//                       }
//                     },
//                     child: const Text(
//                       "Submit",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   // Obx(
//                   //   () => Text("name : ${controller.username.value}"),
//                   // ),
//                   // Obx(
//                   //   () => Text("last : ${controller.email.value}"),
//                   // ),
//                   Text(
//                       "User Name : ${RegisterController.storage.read("userName") ?? ""}"),
//                   Text(
//                       " Email : ${RegisterController.storage.read("email") ?? ""}"),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
