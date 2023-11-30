import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_vidya/utils/route_utils.dart';

class SelectEnglishComponent extends StatelessWidget {
  SelectEnglishComponent({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> englishBooks = <String>[
    "https://m.media-amazon.com/images/I/91W9+f73XoL._AC_UF894,1000_QL80_.jpg",
    "https://www.rachnasagar.in/assets/images/product/big/722Expressions-English-WB-2_F.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSUvZXPW1T8GGLTMLhlRfT5RcKqkA4eAk7aw&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 60,
          ),
          itemCount: englishBooks.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Get.toNamed(MyRoutes.englishchapterPage);
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5, 5),
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    englishBooks[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
