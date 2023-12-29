import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_vidya/utils/route_utils.dart';

class SelectPhysicsComponent extends StatelessWidget {
  SelectPhysicsComponent({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> phyicsBooks = <String>[
    "https://s3-alpha-sig.figma.com/img/d74b/932e/237f41ca120ccc595a7cdd8d94e9e82a?Expires=1701648000&Signature=JJZWH1~ZUDswnnjJGtbdLXcITusOuR2k1FYxYY0QwsqRTpzulxhvb3NGLo841jTinc4bwl8Wu-mDZFZ5PFT7A11UmYEucGnguPfXBGj~pNPNkGFB2O7PXYBJaDms5A9heQznQqbtep8mKBXAenldX9jVRbJQ4OsKom3uBN0GcEdVT99kS82DPm~-ElPqwF7riedo6vLMrxsm~pHkiAqWiXnr5fi4I-wm4ltxZFy-tw5O0c4RdmImyT0sDd7otOXQxFeUZRrCp~O7Gu9OUHw2SZ5KGRqubTgueElx5oPTktG0MfqmOIj6qWZx23S1R7nz7qWYF8dy3PVXtBSKOyBBOw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/f2ee/3978/d47531d06f778f770868ab3b08b73fc0?Expires=1701648000&Signature=D7afvmMW2A~KqbiLs-wUqOl-RKRf32-99K4TCMSjZU4~jTyQEXPga1t4Y4OxqSwYqFWjaNJXG6kTGBuDSQUZGyMjUH5SDmPCID015gd9LN4XhXFV38Qk2ze6b2Vu9yzcMKTQq5N7Af8RrbV4DaZOkfBJcFIpT4IAfwHAya9VAZi6yFst5RFrgQkXke2EYtXegwJGlbgUaYNBH7knJSBGnH4jVKopnXWt6pYSbBIpynkqWFUCA9WUmBwVARi8Gi0hNrHREPwa2MA-4IXndabZZeP0cuxwhvSMXN2QeoSJDkxTiwasNUVCpPqN27Q2GvSWmzbgtU4d8XXDxeVuTzpM1A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/08f0/93fe/9331c47a8c18c616ed52d9442d3c9c2b?Expires=1701648000&Signature=dM1cR6nFjYn~i~E1kp7SKC96Hrh43vMyc6IUxGJvq~SqBzIH9WmgXUnklyWXrOq0kjvDUSeP1rwehKuz3p3-ZwNfUGLjI90uOXarpda3dqBR9Cs4ekx2Q4BtMm1ylsolkr8qj3kEa~TfeU3BsK-UD6-JK4TKPmNetULXz6HA1-5Vps56a8aI6SI3UQ8eIW4zCcWmrYUXakna4KJODyadUoJprnNGL62LHQntTmoc1SLBe4LpAjOEeXcPnKoCu-UFq32KtchT~foPuO9xFGyJGIC1RBhEhkXspWn~BHZquJio1RkmJze7bHbf~QEB7oePeI7es-VKJwv93Jk5t-822A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/c99a/9ec4/c153d381a5d3fea13d0638131285d476?Expires=1701648000&Signature=ISV-pmgSIKjkpC7yrRvY0SBcBY9ORY3pnJc~cyK0BZIggsd4phO91E4DNEqbcVn~J6YfWemea-i6-ciOmPS85EZsze0NY5j0YuzNr0f-l9S6cDkKrr-Bggndqf-C4F5zOgSqBXcXHPjFT5zkIsx13daKkVsnrLTHiVUjSz197Xwgx-U9ySQDYqPCchhNOdTfJ0QoWlosRujcDOdrAEtuIvZpvKthNXqzRhN0X1hiGT0L2XJsfP8jFngG0L6iM3ui38wDr5FQMhwZY7oQeVL5WWys2fmEuak9WDQWjrSL~F-~7A7-EtJ-sQVjl2R6AFvDFhD5CowRePg8F44npw1IYA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/fde5/bf5e/fce65387323aa46507b1ada8ef8b3c1a?Expires=1701648000&Signature=QK4iIRho9DPZtrNmE-YRtMd5~N7X2-yFLdeM-N2svyZ9hdOVHt~o5jKag5kmHkfCj93kxWyRVqz-LtVGiUJDcV8les5GlzNr-gmDyfUqBGSoMeRJ783R5vsHYaVVutBuQVhOUslXOKYpEaDuWwk~TaRHJ~fjsynb2DTHAb5bX5Qmyh-hTU~jM5iICTvTBAZX1Dw3qJOZEgokzuBXU1lZ8VNezpMYZQxiQB16UZW21HtdjcUtMciMkw68aK3vQdxSyEr6GkUddtxeGLRKOoicMxXlbmjNqeITEIGJUAQn0FmzJByqDLyJEWqB~3YbW-r4DFrDYEZnWO7Eyw093v8fKQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/64dd/1eea/b2011e31a885fe85b5a755622c1a2684?Expires=1701648000&Signature=IthA2e3~F1uvHe-qcK4tKkvhE7HsFuDzY77YwJtbC2K9hJyB2ekCl42ug5v2QEyqFksM6F1SFJgbFXF3p2~Jumq6OqavYH5miWNM1TeWIX~4B0lR9t-R-0dbE70UIAoe1O2glu7psUOpL23pjqafiADwQQ5YUVnFlMDeErj~4x9f7Ud~znERVaTGcx6ZI6H4OEtr1Lx9erz9evhx2C1G~SoVCBXQHHtBtWEtLdhDUdu9PCnwjPTAYYRfTIw2DMMFnlLcln529~IlKPP2XTqYVaZmO9nPwVOfGmmMVECimI9skklFd3oS-1MCRMRHykKT7tzPM28Ci5Wc3KXRjY5Srw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/8c0e/4239/6e7169f344fe21889f4f6e990b4a760f?Expires=1701648000&Signature=HUQKcV0REpZfbOjcuDpL6N8rVDpjZAhCd5DtMjKc7wnFDkxf51fZ9hhHavsND3bMpRqIy9Z5PKtIiM7Qow~3l3cC~YeQoHmHh8iPtsTBXbMytMMqMgkoq5i0FUSueX7o8CLTTfCrgV96Z7K8ymvcfvii~t1s-Kq22dGis27Kcu69VU3oL7oiZAZrK4d1DIr76072Wzk8~EGRy5kRIjRZdPwXNgnWmxqJd7q1UkKSQEPIhdBkn3pVFmmCocijDVr-nLxOe5d8zUyFDGlQ1Ww6vD5A3~mQIujOKtzvUPa-x4CtgcXl2tR0rnX0sq3aJOACX3VwEf9GqqkGCnzc8e~1Xw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/799f/8db9/aa8fafdb1dd2cf659668bf3d89c5bf7b?Expires=1701648000&Signature=oceyyir~cb0n8uCz075AQrKok9w6YMi1pTgcfl-KoyPeeiTqPek~jrQVDXpCjK89EQEAZTP72cGgl54YGTKmtNyN4OTYqBdz5tydaD9wKaxZAf8p~FbruEN0EkhdWKdRKTkADxT3dVYShTkZ4ZwZ6klZexMr94wCaEulT1QKGKl-IZq~ONZ5L-JGF0wGdJqPdJ-Wh-qi1-K503JgXpFhYzHXOHPQl55fZDXzWLwODUwMw7TzJbhmwPOY3f6DPkro~4vIlwo7YTChsPRyA0n4ykaWsuYqPrXGZ3iJUH3lWP8ob7cXHZ2GMd9v7GonyG3nIONuhr-CmswxMaCOQzImKw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
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
              crossAxisSpacing: 60),
          itemCount: phyicsBooks.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Get.toNamed(MyRoutes.physicschapterPage);
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
                    phyicsBooks[index],
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
