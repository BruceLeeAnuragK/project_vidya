import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';
import 'package:project_vidya/view/screen/home/controller/badges_provider.dart';
import 'package:provider/provider.dart';

class BadgesPage extends StatefulWidget {
  const BadgesPage({super.key});

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final List badgesItem = [
      ImgPath.path + ImgPath.perfectionist,
      ImgPath.path + ImgPath.archieves,
      ImgPath.path + ImgPath.scholar,
      ImgPath.path + ImgPath.goal,
      ImgPath.path + ImgPath.champion,
    ];
    final List badgesName = [
      "Perfectionist",
      "Archieves",
      "Scholar",
      "Goal",
      "Champion",
    ];
    final List badgesDesc = [
      "Finish all lessons of a\n\t\t\t\t\t\t\t\t\t\tchapter",
      "Complete an exercise",
      "Study two Hours",
      "Finish #1 in the Scoreboard",
      "Study everyday for 30 days",
    ];
    bool isbadges = true;
    return Consumer<BadgesProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff4471CE),
                Color(0xff5A44C3),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Gap(50),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                provider.isBadges();
                              },
                              child: Container(
                                height: 40,
                                width: 148,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff4471CE),
                                          Color(0xff5A44C3),
                                        ])),
                                child: Text(
                                  "BADGES",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                provider.isScore();
                              },
                              child: Container(
                                height: 40,
                                width: 148,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff4471CE),
                                      Color(0xff5A44C3),
                                    ],
                                  ),
                                ),
                                child: Text(
                                  "SCORES",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                (provider.isbadges == true)
                    ? Expanded(
                        flex: 10,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                          itemCount: badgesItem.length,
                          itemBuilder: (context, index) => Card(
                            elevation: 10,
                            borderOnForeground: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shadowColor: Colors.white,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff4471CE),
                                    Color(0xff5A44C3),
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            badgesItem[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    badgesName[index],
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            badgesDesc[index],
                                            style: GoogleFonts.poppins(
                                              color: const Color(0xffE3E3E3),
                                              fontWeight: FontWeight.w100,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        flex: 10,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                          itemCount: badgesItem.length,
                          itemBuilder: (context, index) => Card(
                            elevation: 10,
                            borderOnForeground: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shadowColor: Colors.white,
                            child: Container(
                              height: 150,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff4471CE),
                                    Color(0xff5A44C3),
                                  ],
                                ),
                              ),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      badgesItem[index],
                                    ),
                                  ),
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
      );
    });
  }
}
