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
    return const GetMaterialApp(
      title: "EMart shopping app",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      // getPages: [
      //   GetPage(name: "/", page: () => const SplashScreen(),),
      //   GetPage(name: "/login", page: () => const LoginScreen(),),
      //   GetPage(name: "/signup", page: () => const SignupScreen(),),
      //   GetPage(name: "/forgotPassword", page: () => const ForgotPasswordScreen(),),
      //   GetPage(name: "/home", page: () => const Home(),),
      //   GetPage(name: "/homeScreen", page: () => const HomeScreen(),),
      //   GetPage(name: "/categoryScreen", page: () => const CategoryScreen(),),
      //   GetPage(name: "/cartScreen", page: () => const CartScreen(),),
      //   GetPage(name: "/profileScreen", page: () => const ProfileScreen(),),
      // ],
      home: SplashScreen(),
    );
  }
}
