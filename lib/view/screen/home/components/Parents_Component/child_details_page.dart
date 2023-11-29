import 'package:flutter/material.dart';

import '../../../../../utils/colour_utils.dart';

class ChildDetailPage extends StatelessWidget {
  const ChildDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Details of your Child :",
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
          children: [
            Row(
              children: [
                Text(
                  "Name : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: MyColors.appTitle,
                  ),
                ),
                Text(
                  "Mark Mathew",
                  style: TextStyle(
                    fontSize: 24,
                    color: MyColors.smallText,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  "School Name : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: MyColors.appTitle,
                  ),
                ),
                Text(
                  "Brilliant English\nAcademy",
                  style: TextStyle(
                    fontSize: 24,
                    color: MyColors.smallText,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  "Email Id : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: MyColors.appTitle,
                  ),
                ),
                Text(
                  "markmathew70@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    color: MyColors.smallText,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Select Category : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: MyColors.appTitle,
              ),
            ),
            Container(
              height: 50,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: MyColors.btnBorderColor,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "PRIMARY",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.smallText,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: MyColors.smallText,
                      size: 28,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Select Teacher : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: MyColors.appTitle,
              ),
            ),
            Container(
              height: 50,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: MyColors.btnBorderColor,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Anrdrew Rocus",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.smallText,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: MyColors.smallText,
                      size: 28,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
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
