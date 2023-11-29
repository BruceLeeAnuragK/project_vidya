import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_vidya/utils/route_utils.dart';
import 'package:project_vidya/view/screen/AI/page/chat_bot.dart';
import 'package:project_vidya/view/screen/Chapters/english_chapter_page.dart';
import 'package:project_vidya/view/screen/Chapters/physics_chapter_page.dart';
import 'package:project_vidya/view/screen/Intro/intro_page.dart';
import 'package:project_vidya/view/screen/Intro/select_category_page.dart';
import 'package:project_vidya/view/screen/Register/page/register_page.dart';
import 'package:project_vidya/view/screen/Register/page/selection_page.dart';
import 'package:project_vidya/view/screen/Subject/component/Parents_list_of%20_subject.dart';
import 'package:project_vidya/view/screen/Subject/page/english_page.dart';
import 'package:project_vidya/view/screen/Subject/page/physics_page.dart';
import 'package:project_vidya/view/screen/home/components/Parents_Component/child_details_page.dart';
import 'package:project_vidya/view/screen/home/components/Parents_Component/child_progress_report.dart';
import 'package:project_vidya/view/screen/home/components/Student_Component/student_setting_page.dart';
import 'package:project_vidya/view/screen/home/page/parents_home_page.dart';
import 'package:project_vidya/view/screen/home/page/student_home_page.dart';
import 'package:project_vidya/view/screen/home/page/teacher_home_page.dart';
import 'package:project_vidya/view/screen/login/page/login_page.dart';
import 'package:project_vidya/view/screen/login/page/verification_page.dart';
import 'package:project_vidya/view/screen/splash/page/splash_screen.dart';
import 'package:project_vidya/view/screen/topic/page/english_topic_page.dart';
import 'package:project_vidya/view/screen/topic/page/exercise_page.dart';
import 'package:project_vidya/view/screen/topic/page/physics_topic_page.dart';
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
      initialRoute: MyRoutes.introPage,
      getPages: [
        GetPage(
          name: MyRoutes.splash,
          page: () => StorageHelper.storageHelper.isFirstItem
              ? const SplashScreen()
              : RegisterPage(),
        ),
        GetPage(
          name: MyRoutes.studHome,
          page: () => StudentHomePage(),
        ),
        GetPage(
          name: MyRoutes.teacherHome,
          page: () => TeacherHomePage(),
        ),
        GetPage(
          name: MyRoutes.parentsHome,
          page: () => ParentsHomePage(),
        ),
        GetPage(
          name: MyRoutes.parentsSubject,
          page: () => PSubjects(),
        ),
        GetPage(
          name: MyRoutes.englishstopicPage,
          page: () => EnglishTopicPage(),
        ),
        GetPage(
          name: MyRoutes.exercisePage,
          page: () => ExercisePage(),
        ),
        GetPage(
          name: MyRoutes.chatPage,
          page: () => const ChatPage(),
        ),
        GetPage(
          name: MyRoutes.selectionPage,
          page: () => const SelectionPage(),
        ),
        GetPage(
          name: MyRoutes.registerPage,
          page: () => RegisterPage(),
        ),
        GetPage(
          name: MyRoutes.loginPage,
          page: () => LoginPage(),
        ),
        GetPage(
          name: MyRoutes.introPage,
          page: () => IntroScreen(),
        ),
        GetPage(
          name: MyRoutes.physicsPage,
          page: () => PhysicsPage(),
        ),
        GetPage(
          name: MyRoutes.physicschapterPage,
          page: () => PhysicsChapterPage(),
        ),
        GetPage(
          name: MyRoutes.englishchapterPage,
          page: () => EnglishChapterPage(),
        ),
        GetPage(
          name: MyRoutes.childDetailPage,
          page: () => ChildDetailPage(),
        ),
        GetPage(
          name: MyRoutes.childProgressReportPage,
          page: () => const ChildProgressReportPage(),
        ),
        GetPage(
          name: MyRoutes.settingsPage,
          page: () => const SettingsPage(),
        ),
        GetPage(
          name: MyRoutes.selectCategoryPage,
          page: () => SelectCategoryPage(),
        ),
        GetPage(
          name: MyRoutes.verificationPage,
          page: () => const VerificationPage(),
        ),
        GetPage(
          name: MyRoutes.englishPage,
          page: () => EnglishPage(),
        ),
        GetPage(
          name: MyRoutes.physicstopicPage,
          page: () => PhysicsTopicPage(),
        ),
      ],
    );
  }
}
