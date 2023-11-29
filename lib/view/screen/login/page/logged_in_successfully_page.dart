import 'package:flutter/material.dart';

class Logged extends StatelessWidget {
  const Logged({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: s.height * 0.4,
          width: s.width * 0.8,
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Your account has been",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
              ),
              Text(
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
                "Successfully created",
              ),
              Text(
                "Now LogIn for better ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
              ),
              Text(
                "Experience",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4058D6)),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff4058D6),
    );
  }
}
