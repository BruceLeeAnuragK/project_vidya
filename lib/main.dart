import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_vidya/view/screen/home_page.dart';
import 'package:project_vidya/view/screen/register_page.dart';
import 'package:project_vidya/view/screen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'controller/splash_controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => SearchController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "Cart App",
      getPages: [
        GetPage(
          name: "/",
          page: () => StorageHelper.storageHelper.isFirstItem
              ? const SplashScreen()
              : RegisterPage(),
        ),
        GetPage(
          name: "/HomePage",
          page: () => HomePage(),
        ),
      ],
    );
  }
}
