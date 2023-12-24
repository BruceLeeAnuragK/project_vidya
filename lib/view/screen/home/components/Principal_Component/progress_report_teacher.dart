import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressReportTeacherComponent extends StatefulWidget {
  ProgressReportTeacherComponent({super.key});

  @override
  State<ProgressReportTeacherComponent> createState() =>
      _ProgressReportTeacherComponentState();
}

class _ProgressReportTeacherComponentState
    extends State<ProgressReportTeacherComponent>
    with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  TextEditingController searchController = TextEditingController();

  List<String> stdList = <String>[
    "Std 1",
    "Std 2",
    "Std 3",
    "Std 4",
    "Std 5",
    "Std 6",
    "Std 7",
    "Std 8",
    "Std 9",
    "Std 10",
    "Std 11",
    "Std 12",
  ];

  List<String> subList = <String>[
    "English",
    "Maths",
    "E.N.V.",
    "S.S",
    "Hindi",
    "Gujarati",
    "Sanskrit",
    "Computer",
    "G.K.",
    "Biology",
    "Chemistry",
    "Physics",
  ];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5B93E6),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0,
        bottom: TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          controller: tabController,
          tabs: [
            Container(
              height: 47,
              width: 147,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Weekly",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 47,
              width: 147,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Monthly",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        title: Text(
          "Progress Report",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
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
              Column(
                children: [
                  Image.network(
                      "https://s3-alpha-sig.figma.com/img/e532/9379/967b37706befd26d8e6f1bf23bb0d953?Expires=1704067200&Signature=FB6LaGyFNktnV0i-qIb6mF1f9Pw28yY68Kx3jSruRydLWoZJq-bZbECv5pnff~0iYL5WteWFukkYpS5RFZM9gQ43n5lixk-qychYhpj-OVl3U3OYyhoEyVf7TOqbkk5cU-ChQ5lTDVWQGPvKQOne5bFOu8PgpDvDK5bCaRpy63gehAn3PWyhZm6BJ5NASyUTo53vQQ0Nwxhd~~5Wtx2LTmZJCJwdfjNIqLdy67UH4MFQk7suOyXm3GeGmqckv2KYJsuXaYOONdwUC0kLM3z1SzR4I~cyPmOqmPFwuZ-64iO~HMB6JRkvZuDeCYHQZMgtONcxwButklRxvPm89~qeKQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Description Weekly",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Et venenatis vitae mi lobortis varius non. Arcu ut urna id aenean duis semper vulputate in posuere. Vitae posuere vestibulum eget tristique. Tincidunt elit quis amet a sagittis.",
                        style: GoogleFonts.poppins(
                          color: Color(0xffE3E3E3),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Focus Point",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Et venenatis vitae mi lobortis varius non. Arcu ut urna id aenean duis semper vulputate in posuere. Vitae posuere vestibulum eget tristique. Tincidunt elit quis amet a sagittis.",
                        style: GoogleFonts.poppins(
                          color: Color(0xffE3E3E3),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                      "https://s3-alpha-sig.figma.com/img/e532/9379/967b37706befd26d8e6f1bf23bb0d953?Expires=1704067200&Signature=FB6LaGyFNktnV0i-qIb6mF1f9Pw28yY68Kx3jSruRydLWoZJq-bZbECv5pnff~0iYL5WteWFukkYpS5RFZM9gQ43n5lixk-qychYhpj-OVl3U3OYyhoEyVf7TOqbkk5cU-ChQ5lTDVWQGPvKQOne5bFOu8PgpDvDK5bCaRpy63gehAn3PWyhZm6BJ5NASyUTo53vQQ0Nwxhd~~5Wtx2LTmZJCJwdfjNIqLdy67UH4MFQk7suOyXm3GeGmqckv2KYJsuXaYOONdwUC0kLM3z1SzR4I~cyPmOqmPFwuZ-64iO~HMB6JRkvZuDeCYHQZMgtONcxwButklRxvPm89~qeKQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Description Monthly",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Et venenatis vitae mi lobortis varius non. Arcu ut urna id aenean duis semper vulputate in posuere. Vitae posuere vestibulum eget tristique. Tincidunt elit quis amet a sagittis.",
                        style: GoogleFonts.poppins(
                          color: Color(0xffE3E3E3),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Focus Point",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Et venenatis vitae mi lobortis varius non. Arcu ut urna id aenean duis semper vulputate in posuere. Vitae posuere vestibulum eget tristique. Tincidunt elit quis amet a sagittis.",
                        style: GoogleFonts.poppins(
                          color: Color(0xffE3E3E3),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// height: 50,
// width: 151,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// border: Border.all(
// color: Colors.white,
// ),
// gradient: LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [
// Color(0xff4471CE),
// Color(0xff5A44C3),
// ],
// ),
// ),
// alignment: Alignment.center,
// child: Text(
// "Maths",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {
// Get.toNamed(MyRoutes.englishPage);
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "English",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Biology",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Computer",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {
// Get.toNamed(MyRoutes.physicsPage);
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Physics",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: MaterialButton(
// onPressed: () {},
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff3D5CFF),
// ),
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// child: Text(
// "Chemistry",
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
