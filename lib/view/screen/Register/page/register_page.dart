import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_vidya/utils/route_utils.dart';

import '../../../../utils/imgPath_utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hide = true;
  bool check1 = false;
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
  List<String> categoryList = <String>[
    "Student",
    "Teacher",
    "Tution Teacher",
    "Parent",
    "Principal",
    "Guest",
  ];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff5B93E6),
              Color(0xff3C2DE1),
              Color(0xff3C2DE1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 200,
              top: 190,
              child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(ImgPath.path + ImgPath.sparklegif),
              ),
            ),
            Positioned(
              top: 160,
              right: 337,
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(ImgPath.path + ImgPath.sparklegif),
              ),
            ),
            Positioned(
              top: 50,
              left: 150,
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(ImgPath.path + ImgPath.sparklegif),
              ),
            ),
            Positioned(
              top: 100,
              left: 330,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  ImgPath.path + ImgPath.sparklegif,
                ),
              ),
            ),
            Positioned(
              top: 285,
              left: 50,
              child: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  ImgPath.path + ImgPath.sparklegif,
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 330,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  ImgPath.path + ImgPath.sparklegif,
                ),
              ),
            ),
            Positioned(
              top: 660,
              left: 125,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  ImgPath.path + ImgPath.sparklegif,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    children: [
                      Gap(
                        size.height * 0.1,
                      ),
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Text(
                        "Enter your details below & free sign up",
                        style: TextStyle(
                          color: Color(0xffE3E3E3),
                          fontSize: 15,
                        ),
                      ), //left right
                      Gap(
                        size.height * 0.05,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: size.height * 0.0046,
                          ),
                          label: const Text(
                            "Phone number",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Gap(
                        size.height * 0.03,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: size.height * 0.0046,
                          ),
                          label: const Text(
                            "Username",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Gap(
                        size.height * 0.03,
                      ),
                      TextFormField(
                        obscureText: hide,
                        textInputAction: TextInputAction.done,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: size.height * 0.0046,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hide = !hide;
                              });
                            },
                            icon: hide
                                ? const Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.visibility_off_outlined,
                                    color: Colors.white,
                                  ),
                          ),
                          label: const Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Gap(
                        size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DropdownMenu(
                              width: 200,
                              inputDecorationTheme: InputDecorationTheme(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: size.height * 0.0046,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: const BorderSide(
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: const BorderSide(
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                              label: Text(
                                categoryList[0],
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              trailingIcon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.white,
                              ),
                              selectedTrailingIcon: const Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: Colors.white,
                              ),
                              initialSelection: dropdownValue,
                              textStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              dropdownMenuEntries:
                                  categoryList.map<DropdownMenuEntry<String>>(
                                (String value) {
                                  return DropdownMenuEntry<String>(
                                    value: value,
                                    label: value,
                                  );
                                },
                              ).toList(),
                              onSelected: (val) {
                                dropdownValue = val!;
                              },
                            ),
                          ],
                        ),
                      ),
                      Gap(
                        size.height * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushReplacementNamed(
                                MyRoutes.succcessfullyRegisteredPage);
                          });
                        },
                        child: Container(
                          height: size.height * 0.07,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffFFFFFF),
                            ),
                            color: const Color(0xff3C2DE1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "CREATE ACCOUNT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Checkbox(
                              value: check1,
                              // checkColor: Colors.white,
                              // activeColor: Color(0xffFFFFFF),
                              side: const BorderSide(
                                color: Color(0xffFFFFFF),
                              ),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  check1 = !check1;
                                  log(value.toString());
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 12,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Gap(
                                  size.height * 0.02,
                                ),
                                const Text(
                                  "By creating an account you have to agree\nwith our terms & condition.",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(
                        size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.loginPage);
                            },
                            child: const Text(
                              "Log in",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
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
