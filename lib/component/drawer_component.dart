import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

Widget MyDrawer() {
  return Builder(builder: (context) {
    final size = MediaQuery.of(context).size;
    List titles = [
      "Setting",
      "Lanuage",
      "Rock, Paper & Scissors",
      "Lanuage Translator",
      "Typing Speed test Game",
      "Word Scramble Game",
      "Dictionary",
      "Image Generator",
      "Animated Videos",
    ];
    List subtitles = [
      "Change your details",
      "Switch chosen language",
      "Cooper Christin",
      "Cooper Christin",
      "Cooper Christin",
      "Cooper Christin",
      "Cooper Christin",
      "Cooper Christin",
      "Learn through animated videos",
    ];
    List icons = [
      Icon(
        Icons.person,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.translate,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.sign_language,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.g_translate,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.videogame_asset_rounded,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.wordpress,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.sort_by_alpha,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.image,
        color: Colors.white,
        size: 20,
      ),
      Icon(
        Icons.video_camera_back_outlined,
        color: Colors.white,
        size: 20,
      ),
    ];
    List gameLinkList = [
      "https://regal-choux-0509e4.netlify.app/",
      "https://glowing-centaur-968266.netlify.app/",
      "https://dreamy-vacherin-36a05e.netlify.app/",
      "https://lambent-druid-1943be.netlify.app/",
    ];
    return Drawer(
      backgroundColor: Color(0xff5B93E6),
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Color(0xff3C2DE1),
        ),
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff93A3FA),
                child: icons[index],
              ),
              title: Text(
                titles[index],
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                subtitles[index],
                style: GoogleFonts.poppins(
                  color: Color(0xffE3E3E3),
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  if (index == 0) {
                    Navigator.of(context).pushNamed(MyRoutes.settingPage);
                  } else if (index == 1) {
                    Navigator.of(context).pushNamed(MyRoutes.selectLanguage);
                  } else if (index == 2) {
                    Navigator.of(context).pushNamed(MyRoutes.gamePages,
                        arguments: gameLinkList[0]);
                  } else if (index == 3) {
                    Navigator.of(context).pushNamed(MyRoutes.gamePages,
                        arguments: gameLinkList[3]);
                  } else if (index == 4) {
                    Navigator.of(context).pushNamed(MyRoutes.gamePages,
                        arguments: gameLinkList[1]);
                  } else if (index == 5) {
                    Navigator.of(context).pushNamed(MyRoutes.gamePages,
                        arguments: gameLinkList[2]);
                  }
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  });
}
