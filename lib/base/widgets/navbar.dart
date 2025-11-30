import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(FluentIcons.home_12_filled),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.diamond_outlined),
          label: "Rewards",
        ),
        NavigationDestination(
          icon: Icon(FluentIcons.chart_multiple_20_regular),
          label: "Finance",
        ),
        NavigationDestination(
          icon: Icon(FluentIcons.card_ui_24_filled),
          label: "Cards",
        ),
        NavigationDestination(
          icon: Icon(FluentIcons.person_12_filled),
          label: "Me",
        ),
      ],
    );
  }
}
