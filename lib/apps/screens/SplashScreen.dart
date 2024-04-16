import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    Timer(const Duration(seconds: 3), () {
      Get.offNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("E-Mart Shopping app",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),)),
    );
  }
}
