import 'package:flutter/material.dart';
import 'package:opay_clone/base/widgets/navbar.dart';
import 'package:opay_clone/core/theme/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: AppColors.frenchPass,

      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

