import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/route_utils.dart';

class SHomeComponent extends StatefulWidget {
  const SHomeComponent({super.key});

  @override
  State<SHomeComponent> createState() => _SHomeComponentState();
}

class _SHomeComponentState extends State<SHomeComponent> {
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
  List<Widget> drawerWidgets = [
    ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Settings",
      ),
      subtitle: const Text(
        "Change your details",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Language",
      ),
      subtitle: const Text(
        "Switch chosen language",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Game",
      ),
      subtitle: const Text(
        "Cooper Christin",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Image Generator",
      ),
      subtitle: const Text(
        "Generate Images through our AI",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Animated Videos",
      ),
      subtitle: const Text(
        "Learn through animated videos",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff93A3FA),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Animated Videos",
      ),
      subtitle: const Text(
        "Learn through animated videos",
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    String dropdownValue = stdList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: const Color(0xff5B93E6),
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: ListView(
            children: <Widget>[...drawerWidgets],
          ),
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
          child: Column(
            children: [
              Gap(
                size.height * 0.05,
              ),
              Text(
                "Hi,Cristin",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "What would you like to learn today?",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                ),
              ),
              Text(
                "Search below",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                ),
              ),
              Gap(
                size.height * 0.03,
              ),
              TextFormField(
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 20,
                      bottom: 10,
                    ),
                    child: Container(
                      height: size.height * 0.01,
                      width: size.width * 0.03,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        padding: const EdgeInsets.only(
                          bottom: 3,
                          right: 3,
                        ),
                        icon: const Icon(
                          Icons.search_rounded,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: size.height * 0.0046,
                  ),
                  hintText: "Search Here",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 3,
                      )),
                ),
              ),
              Gap(
                size.height * 0.03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: DropdownMenu(
                  trailingIcon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                  selectedTrailingIcon: const Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: Colors.white,
                  ),
                  inputDecorationTheme: InputDecorationTheme(
                    constraints: const BoxConstraints(
                      maxWidth: 110,
                      maxHeight: 42,
                    ),
                    contentPadding: const EdgeInsets.all(
                      10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  initialSelection: dropdownValue,
                  dropdownMenuEntries: stdList.map<DropdownMenuEntry<String>>(
                    (String value) {
                      return DropdownMenuEntry<String>(
                        value: value,
                        label: value,
                      );
                    },
                  ).toList(),
                  onSelected: (String? val) {
                    dropdownValue = val!;
                  },
                ),
              ),
              Gap(
                size.height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select Your Subject ",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 3 / 1,
                  ),
                  itemCount: subList.length,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRoutes.summaryPage);
                      },
                      child: Container(
                        height: 50,
                        width: 151,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: const Color(0xff3C2DE1),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          subList[index],
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
