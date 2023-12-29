import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../component/drawer_component.dart';

class ChatWithTeacherPage extends StatefulWidget {
  const ChatWithTeacherPage({super.key});

  @override
  State<ChatWithTeacherPage> createState() => _ChatWithTeacherPageState();
}

List<String> stdList = <String>[
  "Teacher",
  "Shweta Dholakiya",
  "Omkar Dholakiya",
  "Om Trivedi",
  "Rahul Singh",
  "Yogesh Pathak",
];
GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _ChatWithTeacherPageState extends State<ChatWithTeacherPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _scaffoldKey.currentState?.openEndDrawer();
              });
            },
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xff5B93E6),
        title: Text(
          "Chat Differently",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff3C2DE1),
                  ),
                  child: DropdownMenu(
                    inputDecorationTheme: InputDecorationTheme(
                      constraints: const BoxConstraints(
                        maxWidth: 200,
                        maxHeight: 42,
                      ),
                      contentPadding: const EdgeInsets.all(
                        10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    initialSelection: dropdownValue,
                    trailingIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    dropdownMenuEntries: stdList.map<DropdownMenuEntry<String>>(
                      (String value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      },
                    ).toList(),
                    onSelected: (String? val) {
                      dropdownValue = val!;
                    },
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                left: 15,
                bottom: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3C2DE1),
                ),
                child: TextFormField(
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
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ),
                    ),
                    label: const Text(
                      "Enter Your Message",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
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
// InAppWebView(
//         initialUrlRequest: URLRequest(
//           url: Uri.parse(
//               "https://mediafiles.botpress.cloud/a5cf75bb-d679-4d34-b40e-e2c67d70be03/webchat/bot.html"),
//         ),
//       ),
