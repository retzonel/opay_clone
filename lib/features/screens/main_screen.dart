import 'package:flutter/material.dart';
import 'package:opay_clone/features/navigation/navbar.dart';
import 'package:opay_clone/features/navigation/navigation_notifier.dart';
import 'package:opay_clone/features/screens/cards_screen/cards_screen.dart';
import 'package:opay_clone/features/screens/finance_screen/finance_screen.dart';
import 'package:opay_clone/features/screens/home_screen/home_screen.dart';
import 'package:opay_clone/features/screens/profile_screen/profile_screen.dart';
import 'package:opay_clone/features/screens/reward_screen/rewards_screen.dart';

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
      body: ValueListenableBuilder(
        valueListenable: selectedScreenNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

List<Widget> pages = [
  HomeScreen(),
  RewardsScreen(),
  FinanceScreen(),
  CardsScreen(),
  ProfileScreen(),
];
