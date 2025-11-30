import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';
import 'package:opay_clone/pages/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.javaColor),
      ),

      home: WelcomeScreen()
    );
  }
}
