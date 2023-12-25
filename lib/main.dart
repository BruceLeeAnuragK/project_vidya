import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_vidya/utils/route_utils.dart';
import 'package:project_vidya/view/screen/AI/page/chat_anonymously.dart';
import 'package:project_vidya/view/screen/AI/page/chat_bot.dart';
import 'package:project_vidya/view/screen/AI/page/chat_with_teacher.dart';
import 'package:project_vidya/view/screen/AI/page/select_chat_page.dart';
import 'package:project_vidya/view/screen/Chapters/english_chapter_page.dart';
import 'package:project_vidya/view/screen/Chapters/physics_chapter_page.dart';
import 'package:project_vidya/view/screen/Intro/component/intro1_screen.dart';
import 'package:project_vidya/view/screen/Intro/component/intro2_screen.dart';
import 'package:project_vidya/view/screen/Intro/component/intro3_screen.dart';
import 'package:project_vidya/view/screen/Intro/controller/intro_screen_controller.dart';
import 'package:project_vidya/view/screen/Intro/intro_page.dart';
import 'package:project_vidya/view/screen/Intro/select_category_page.dart';
import 'package:project_vidya/view/screen/Register/page/register_page.dart';
import 'package:project_vidya/view/screen/Register/page/selection_page.dart';
import 'package:project_vidya/view/screen/Setting/setting_page.dart';
import 'package:project_vidya/view/screen/Subject/component/Parents_list_of%20_subject.dart';
import 'package:project_vidya/view/screen/Subject/page/english_page.dart';
import 'package:project_vidya/view/screen/Subject/page/physics_page.dart';
import 'package:project_vidya/view/screen/Successfull/successfully_registered_screen.dart';
import 'package:project_vidya/view/screen/home/components/Parents_Component/child_details_page.dart';
import 'package:project_vidya/view/screen/home/components/Parents_Component/child_progress_report.dart';
import 'package:project_vidya/view/screen/home/components/Principal_Component/progress_report_teacher.dart';
import 'package:project_vidya/view/screen/home/components/Student_Component/student_badges_page.dart';
import 'package:project_vidya/view/screen/home/controller/badges_provider.dart';
import 'package:project_vidya/view/screen/home/controller/stud_home_navigation_bar_provider.dart';
import 'package:project_vidya/view/screen/home/page/parents_home_page.dart';
import 'package:project_vidya/view/screen/home/page/principle_home_page.dart';
import 'package:project_vidya/view/screen/home/page/student_home_page.dart';
import 'package:project_vidya/view/screen/home/page/teacher_home_page.dart';
import 'package:project_vidya/view/screen/login/page/lets_get_started_page.dart';
import 'package:project_vidya/view/screen/login/page/logged_in_successfully_page.dart';
import 'package:project_vidya/view/screen/login/page/login_page.dart';
import 'package:project_vidya/view/screen/login/page/notification_page.dart';
import 'package:project_vidya/view/screen/login/page/otp_verification_page.dart';
import 'package:project_vidya/view/screen/login/page/select_language.dart';
import 'package:project_vidya/view/screen/login/page/verification_page.dart';
import 'package:project_vidya/view/screen/splash/page/splash_screen.dart';
import 'package:project_vidya/view/screen/topic/page/english_topic_page.dart';
import 'package:project_vidya/view/screen/topic/page/exercise_page.dart';
import 'package:project_vidya/view/screen/topic/page/physics_topic_page.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchController(),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BadgesProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => StudNavigationBarProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cart App",
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.introPage: (context) => const IntroScreen(),
        MyRoutes.introComponent1: (context) => const Intro1Screen(),
        MyRoutes.introComponent2: (context) => const Intro2Screen(),
        MyRoutes.introComponent3: (context) => const Intro3Screen(),
        MyRoutes.selectCategoryPage: (context) => SelectCategoryPage(),
        MyRoutes.loginPage: (context) => const LoginPage(),
        MyRoutes.selectLanguage: (context) => const LanguagePage(),
        MyRoutes.settingPage: (context) => SettingPage(),
        MyRoutes.otpVerificationPage: (context) => const OtpVerificationPage(),
        MyRoutes.verificationPage: (context) => const VerificationPage(),
        MyRoutes.letsGetStartedPage: (context) => const LetsGetStartedPage(),
        MyRoutes.loggedInPage: (context) => const Logged(),
        MyRoutes.notificationsPage: (context) => const NotificationsPage(),
        MyRoutes.registerPage: (context) => const RegisterPage(),
        MyRoutes.succcessfullyRegisteredPage: (context) =>
            const SuccessfullyRegistered(),
        MyRoutes.splash: (context) => const SplashScreen(),
        MyRoutes.studHome: (context) => StudentHomePage(),
        MyRoutes.teacherHome: (context) => TeacherHomePage(),
        MyRoutes.parentsHome: (context) => ParentsHomePage(),
        MyRoutes.principalHome: (context) => PrincipalHomePage(),
        MyRoutes.progressReportTeacher: (context) =>
            ProgressReportTeacherComponent(),
        MyRoutes.parentsSubject: (context) => PSubjects(),
        MyRoutes.englishstopicPage: (context) => EnglishTopicPage(),
        MyRoutes.exercisePage: (context) => ExercisePage(),
        MyRoutes.chatPage: (context) => const ChatBotPage(),
        MyRoutes.chatWithTeacherPage: (context) => const ChatWithTeacherPage(),
        MyRoutes.chatAnonymouselyPage: (context) =>
            const ChatAnonymouselyPage(),
        MyRoutes.selectChatPage: (context) => const SelectChatpage(),
        MyRoutes.selectionPage: (context) => const SelectionPage(),
        MyRoutes.physicstopicPage: (context) => PhysicsTopicPage(),
        MyRoutes.englishchapterPage: (context) => EnglishChapterPage(),
        MyRoutes.physicschapterPage: (context) => PhysicsChapterPage(),
        MyRoutes.englishPage: (context) => EnglishPage(),
        MyRoutes.physicsPage: (context) => PhysicsPage(),
        MyRoutes.childDetailPage: (context) => ChildDetailPage(),
        MyRoutes.childProgressReportPage: (context) =>
            const ChildProgressReportPage(),
        MyRoutes.badgesPage: (context) => const BadgesPage(),
      },
      // getPages: [
      //   GetPage(
      //     name: MyRoutes.splash,
      //     page: () => StorageHelper.storageHelper.isFirstItem
      //         ? const SplashScreen()
      //         : RegisterPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.studHome,
      //     page: () => StudentHomePage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.teacherHome,
      //     page: () => TeacherHomePage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.parentsHome,
      //     page: () => ParentsHomePage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.parentsSubject,
      //     page: () => PSubjects(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.englishstopicPage,
      //     page: () => EnglishTopicPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.exercisePage,
      //     page: () => ExercisePage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.chatPage,
      //     page: () => const ChatPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.selectionPage,
      //     page: () => const SelectionPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.registerPage,
      //     page: () => RegisterPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.loginPage,
      //     page: () => LoginPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.loggedInPage,
      //     page: () => Logged(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.introPage,
      //     page: () => IntroScreen(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.physicsPage,
      //     page: () => PhysicsPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.physicschapterPage,
      //     page: () => PhysicsChapterPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.englishchapterPage,
      //     page: () => EnglishChapterPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.childDetailPage,
      //     page: () => ChildDetailPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.childProgressReportPage,
      //     page: () => const ChildProgressReportPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.settingsPage,
      //     page: () => const SettingsPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.selectCategoryPage,
      //     page: () => SelectCategoryPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.verificationPage,
      //     page: () => const VerificationPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.otpVerificationPage,
      //     page: () => const OtpVerificationPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.notificationsPage,
      //     page: () => const NotificationsPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.letsGetStartedPage,
      //     page: () => const LetsGetStartedPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.englishPage,
      //     page: () => EnglishPage(),
      //   ),
      //   GetPage(
      //     name: MyRoutes.physicstopicPage,
      //     page: () => PhysicsTopicPage(),
      //   ),
      // ],
    );
  }
}
