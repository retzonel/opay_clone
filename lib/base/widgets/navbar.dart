import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.food_bank), label: "Home"),
        NavigationDestination(
          icon: Icon(Icons.diamond_outlined),
          label: "Rewards",
        ),
        NavigationDestination(icon: Icon(Icons.pie_chart), label: "Finance"),
        NavigationDestination(icon: Icon(Icons.card_giftcard), label: "Cards"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
