import 'package:flutter/material.dart';

import '../../../../../utils/colour_utils.dart';

class ChildProgressReportPage extends StatelessWidget {
  const ChildProgressReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Progress Report :",
          style: TextStyle(
            fontSize: 31,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 144,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: MyColors.btnBorderColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Weekly",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.smallText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 144,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: MyColors.btnBorderColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Monthly",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.smallText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 162,
              width: double.infinity,
              color: Colors.grey,
              child: const Center(
                child: Text("Graph"),
              ),
            ),
            Text(
              "Description :",
              style: TextStyle(
                fontSize: 24,
                color: MyColors.appTitle,
              ),
            ),
            const Spacer(),
            Center(
              child: Text(
                "Focus Points :",
                style: TextStyle(
                  fontSize: 24,
                  color: MyColors.appTitle,
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
