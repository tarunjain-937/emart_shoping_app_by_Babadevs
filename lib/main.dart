import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CartScreen/CartScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CategoryScreen/CategoryScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/Home.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/HomeScreen/HomeScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/ProfileScreen/ProfileScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/authScreen/ForgotPasswordScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/authScreen/LoginScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/authScreen/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'apps/screens/SplashScreen.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "eMart shopping app",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const SplashScreen(),),
        GetPage(name: "/login", page: () => const LoginScreen(),),
        GetPage(name: "/signup", page: () => const SignupScreen(),),
        GetPage(name: "/forgotPassword", page: () => const ForgotPasswordScreen(),),
        GetPage(name: "/home", page: () => const Home(),),
        GetPage(name: "/homeScreen", page: () => const HomeScreen(),),
        GetPage(name: "/categoryScreen", page: () => const CategoryScreen(),),
        GetPage(name: "/cartScreen", page: () => const CartScreen(),),
        GetPage(name: "/profileScreen", page: () => const ProfileScreen(),),
      ],
    );
  }
}
