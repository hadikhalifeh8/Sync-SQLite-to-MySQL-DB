import 'package:bottels_app/core/constant/routes.dart';
import 'package:bottels_app/core/middleware/myMiddleware.dart';
import 'package:bottels_app/view/SQL%20LIGTE%20NOTE/add.dart';
import 'package:bottels_app/view/SQL%20LIGTE%20NOTE/edit.dart';
import 'package:bottels_app/view/SQL%20LIGTE%20NOTE/view.dart';
import 'package:bottels_app/view/screen/Test/SQLITE%20TEST/notehomeTest.dart';

import 'package:bottels_app/view/screen/Test/test.dart';







import 'package:get/get_navigation/src/routes/get_route.dart';



List<GetPage<dynamic>>? routes = [

   GetPage(name:  "/", page: () => const ViewNote(), middlewares: [MyMidlleware()]),
   // GetPage(name:  "/", page: () => const TestView(),),


   GetPage(name:  AppRoute.adddNote, page: () => const AddNote(),),
   GetPage(name:  AppRoute.updatedNote, page: () => const EditNote(),),



// Test
   GetPage(name:  AppRoute.test, page: () => const Test(),),

   // Note
   GetPage(name:  AppRoute.noteHome, page: () => const Test(),),




// onBoarding page
   //GetPage(name:  AppRoute.onBoarding, page: () => const OnBoarding(),),

// Auth
  // GetPage(name:  AppRoute.login, page: () => const Login(),),

   //GetPage(name:  AppRoute.signup, page: () => const Signup(),),
   //GetPage(name:  AppRoute.verifyCodeSignup, page: () => const VerifyCodeSignUp(),),










];



