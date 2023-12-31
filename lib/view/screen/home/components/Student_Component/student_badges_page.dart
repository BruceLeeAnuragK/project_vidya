import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';
import 'package:project_vidya/view/screen/home/controller/badges_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../component/drawer_component.dart';

class BadgesPage extends StatefulWidget {
  const BadgesPage({super.key});

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _BadgesPageState extends State<BadgesPage> with TickerProviderStateMixin {
  late final TabController tabController;
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final List badgesItem = [
      ImgPath.path + ImgPath.perfectionist_gif,
      ImgPath.path + ImgPath.achiever_gif,
      ImgPath.path + ImgPath.scholar_gif,
      ImgPath.path + ImgPath.champion_gif,
      ImgPath.path + ImgPath.focus_gif,
    ];
    final List badgesName = [
      "Perfectionist",
      "Archieves",
      "Scholar",
      "Champion",
      "Focused",
    ];
    final List badgesDesc = [
      "\t\t\tFinish all lessons of a\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tchapter",
      "\t\t\tComplete an exercise",
      "\t\t\t\t\t\tStudy two Hours",
      "\t\t\t\t\t\t\t\tFinish #1 in the\n\t\t\t\t\t\t\t\t\t\t\tScoreboard",
      "\t\t\t\tStudy everyday for\n\t\t\t\t\t\t\t\t\t\t\t\t30 days",
    ];

    return Consumer<BadgesProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: MyDrawer(),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.grid_view_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _scaffoldKey.currentState!.openEndDrawer();
                  });
                },
              )
            ],
            backgroundColor: const Color(0xff5B93E6),
            title: TabBar(
              indicatorColor: const Color(0xff3C2DE1),
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              controller: tabController,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "BADGES",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "SCORES",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
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
              child: TabBarView(
                controller: tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemCount: badgesItem.length,
                      itemBuilder: (context, index) => Container(
                        height: size.height * 0.2,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 0,
                              spreadRadius: 0,
                              offset: Offset(1, -1),
                            )
                          ],
                          color: const Color(0xff3C2DE1),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Container(
                                height: size.height * 0.08,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
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
                                        fontWeight: FontWeight.w300,
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemCount: badgesItem.length,
                      itemBuilder: (context, index) => Container(
                        height: size.height * 0.2,
                        width: size.width * 0.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 0,
                              spreadRadius: 0,
                              offset: Offset(1, -1),
                            )
                          ],
                          color: const Color(0xff3C2DE1),
                        ),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                badgesItem[index],
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
      },
    );
  }
}
