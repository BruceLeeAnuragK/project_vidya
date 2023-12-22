import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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

class _ChatWithTeacherPageState extends State<ChatWithTeacherPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff4471CE),
        title: Text(
          "Chat Differently",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff4471CE),
              Color(0xff5A44C3),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff4471CE),
                        Color(0xff5A44C3),
                      ],
                    ),
                  ),
                  child: DropdownMenu(
                    inputDecorationTheme: InputDecorationTheme(
                      constraints: BoxConstraints(
                        maxWidth: 200,
                        maxHeight: 42,
                      ),
                      contentPadding: EdgeInsets.all(
                        10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    initialSelection: dropdownValue,
                    trailingIcon: Icon(
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                left: 15,
                bottom: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff4471CE),
                      Color(0xff5A44C3),
                    ],
                  ),
                ),
                child: TextFormField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.white,
                  style: TextStyle(
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
                      icon: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ),
                    ),
                    label: Text(
                      "Enter Your Message",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
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
