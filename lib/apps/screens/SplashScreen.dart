import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/Home.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/authScreen/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts/firebase_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth.authStateChanges().listen((User? user) {
      if(user == null && mounted ){
        // No user has login yet
        Get.off(()=> LoginScreen());
      }else{
        // A user has login
        Get.off(()=> Home());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("E-Mart Shopping app",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),)),
    );
  }
}












