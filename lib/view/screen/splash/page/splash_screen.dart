import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';
import 'package:project_vidya/view/screen/Register/page/register_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController upAnimationController;
  late AnimationController downAnimationController;
  late Animation upPosition1;
  late Animation upPosition2;
  late Animation upPosition3;
  late Animation upPosition4;
  late Animation downPosition1;
  late Animation downPosition2;
  late Animation downPosition3;
  late Animation downPosition4;

  @override
  void initState() {
    super.initState();
    upAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..forward();
    downAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..forward();

    upPosition1 = Tween(begin: -150.0, end: 0.0).animate(
        CurvedAnimation(parent: upAnimationController, curve: Curves.easeIn));
    upPosition2 = Tween(begin: -150.0, end: 0.0).animate(
        CurvedAnimation(parent: upAnimationController, curve: Curves.easeIn));
    upPosition3 = Tween(begin: -150.0, end: 0.0).animate(
        CurvedAnimation(parent: upAnimationController, curve: Curves.easeIn));
    upPosition4 = Tween(begin: -150.0, end: 0.0).animate(
        CurvedAnimation(parent: upAnimationController, curve: Curves.easeIn));

    downPosition1 = Tween(begin: 150.0, end: 0.0).animate(
        CurvedAnimation(parent: downAnimationController, curve: Curves.easeIn));
    downPosition2 = Tween(begin: 150.0, end: 0.0).animate(
        CurvedAnimation(parent: downAnimationController, curve: Curves.easeIn));
    downPosition3 = Tween(begin: 150.0, end: 0.0).animate(
        CurvedAnimation(parent: downAnimationController, curve: Curves.easeIn));
    downPosition4 = Tween(begin: 150.0, end: 0.0).animate(
        CurvedAnimation(parent: downAnimationController, curve: Curves.easeIn));
  }

  /*

    void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 10,
      ),
    )..forward();
    positionanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 10,
      ),
    )..forward();
    mercuryanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 40,
      ),
    )..forward();
    venusanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 60,
      ),
    )..forward();
    earthanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 80,
      ),
    )..forward();
    marsanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 100,
      ),
    )..forward();

    jupitaranimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 120,
      ),
    )..forward();
    saturnanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 140,
      ),
    )..forward();
    UranusanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 160,
      ),
    )..forward();

    neptuneanimationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 180,
      ),
    )..forward();

    angle = Tween<double>(
      begin: 0.0,
      end: (pi * 2).toDouble(),
    ).animate(
      animationController,
    );
    animationController.forward();
    positionanimationController.forward();
    opacity = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: positionanimationController,
        curve: Interval(
          0.5,
          1.0,
        ),
      ),
    );
    bannerposition = Tween(
      begin: -150,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: positionanimationController,
        curve: Interval(
          0.0,
          0.5,
        ),
      ),
    );
    position = Tween(
      begin: 500.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.0, 0.5),
      ),
    );
    planetControllers = [
      mercuryanimationController,
      venusanimationController,
      earthanimationController,
      marsanimationController,
      jupitaranimationController,
      saturnanimationController,
      UranusanimationController,
      neptuneanimationController
    ];

    earthanimationController.repeat();
    mercuryanimationController.repeat();
    marsanimationController.repeat();
    saturnanimationController.repeat();
    neptuneanimationController.repeat();
    jupitaranimationController.repeat();
    UranusanimationController.repeat();
    venusanimationController.repeat();
    positionanimationController.forward();
  }

   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    AnimatedBuilder(
                      builder: (context, val) {
                        return Transform.translate(
                          offset: Offset(0, upPosition1.value),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImgPath.path + ImgPath.uimg1),
                              ),
                            ),
                          ),
                        );
                      },
                      animation: upAnimationController,
                    ),
                    AnimatedBuilder(
                      builder: (context, val) {
                        return Transform.translate(
                          offset: Offset(0, upPosition2.value),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImgPath.path + ImgPath.uimg2),
                              ),
                            ),
                          ),
                        );
                      },
                      animation: upAnimationController,
                    ),
                    AnimatedBuilder(
                      builder: (context, val) {
                        return Transform.translate(
                          offset: Offset(0, upPosition3.value),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImgPath.path + ImgPath.uimg3),
                              ),
                            ),
                          ),
                        );
                      },
                      animation: upAnimationController,
                    ),
                    AnimatedBuilder(
                      builder: (context, val) {
                        return Transform.translate(
                          offset: Offset(0, upPosition4.value),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImgPath.path + ImgPath.uimg4),
                              ),
                            ),
                          ),
                        );
                      },
                      animation: upAnimationController,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: Text(
                    "LOGO",
                    style: GoogleFonts.openSans(
                      fontSize: 30,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Stack(
                  children: [
                    AnimatedBuilder(
                      animation: downAnimationController,
                      builder: (context, val) {
                        return Container(
                          height: 284.8,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage(ImgPath.path + ImgPath.down_img1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    // AnimatedBuilder(
                    //   animation: downAnimationController,
                    //   builder: (context, val) {
                    //     return Container(
                    //       height: 200,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //           image: AssetImage(ImgPath.path + ImgPath.dimg2),
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                    // AnimatedBuilder(
                    //   animation: downAnimationController,
                    //   builder: (context, val) {
                    //     return Container(
                    //       height: 200,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //           image: AssetImage(ImgPath.path + ImgPath.dimg3),
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                    // AnimatedBuilder(
                    //   animation: downAnimationController,
                    //   builder: (context, val) {
                    //     return Container(
                    //       height: 200,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //           image: AssetImage(ImgPath.path + ImgPath.dimg4),
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
