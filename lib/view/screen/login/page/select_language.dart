import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_vidya/utils/route_utils.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List MyLanguages = [
      "English",
      "ગુજરાતી",
      "मराठी",
      "मैथिलि",
      "नेपाली",
      "తెలుగు",
      "ಕನ್ನಡ",
      "മലയാളം",
      "اردو",
      "डोगरी",
      "বাংলা",
      "தமிழ்"
    ];
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
              child: Center(
                child: Column(
                  children: [
                    Gap(size.height * 0.1),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Select Language",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Gap(
                      size.height * 0.02,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30,
                          childAspectRatio: 3,
                        ),
                        itemCount: 12,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(MyRoutes.studHome);
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 0.05,
                            decoration: BoxDecoration(
                              color: const Color(0xff3C2DE1),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              MyLanguages[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
