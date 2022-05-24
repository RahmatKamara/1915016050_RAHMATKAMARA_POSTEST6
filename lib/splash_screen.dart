// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_ctrl.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   splashScreenStart();
  //   super.initState();
  // }

  // splashScreenStart() {
  //   var duration = Duration(seconds: 4);
  //   return Timer(duration, () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) {
  //         return LandingPage();
  //       }),
  //     );
  //   });
  // }

  final SplashScreenController ss = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/E-Voting.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
