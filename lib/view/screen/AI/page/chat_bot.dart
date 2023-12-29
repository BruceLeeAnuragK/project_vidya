import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../component/drawer_component.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _ChatBotPageState extends State<ChatBotPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
          "Chat AI",
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
                      "Enter Your Prompt",
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
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
    );
  }
}
// InAppWebView(
//         initialUrlRequest: URLRequest(
//           url: Uri.parse(
//               "https://mediafiles.botpress.cloud/a5cf75bb-d679-4d34-b40e-e2c67d70be03/webchat/bot.html"),
//         ),
//       ),
