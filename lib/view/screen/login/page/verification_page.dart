import 'package:flutter/material.dart';

import '../../../../utils/colour_utils.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verification :",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: MyColors.appTitle,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: MyColors.btnColor,
            weight: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "We Sent you a link to Verify\nyour Email Address",
              style: TextStyle(
                fontSize: 16,
                color: MyColors.smallText,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "Enter the captcha here after resetting your verification",
              style: TextStyle(
                fontSize: 14,
                color: MyColors.smallText,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              "I did not receive a link",
              style: TextStyle(
                fontSize: 16,
                color: MyColors.smallText,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              "RESEND",
              style: TextStyle(
                fontSize: 18,
                color: MyColors.btnColor,
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
