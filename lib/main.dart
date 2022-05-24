import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016050_rahmatkamara/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
