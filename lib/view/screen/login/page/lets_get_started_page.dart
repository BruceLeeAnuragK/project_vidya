import 'package:flutter/material.dart';

import '../../../../utils/colour_utils.dart';

class LetsGetStartedPage extends StatelessWidget {
  const LetsGetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lets Get Started",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: MyColors.appTitle,
          ),
        ),
        actions: [
          Text(
            "Skip",
            style: TextStyle(
              fontSize: 14,
              color: MyColors.smallText,
            ),
          ),
        ],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              color: MyColors.btnColor,
              weight: 1,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Enter Your Mobile Number for Two\n            Step Verification",
              style: TextStyle(
                fontSize: 16,
                color: MyColors.smallText,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixText: "+91 ",
                prefixStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "OR",
              style: TextStyle(
                fontSize: 12,
                color: MyColors.smallText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email Address",
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 90),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 90),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
