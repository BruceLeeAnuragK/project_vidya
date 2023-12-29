import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5B93E6),
        centerTitle: true,
        title: Text(
          "Summary",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
            weight: 1,
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xff3d5cff),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Topic $index",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
          ),
        ),
      ),
    );
  }
}
