import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';
import 'package:opay_clone/features/navigation/navigation_notifier.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedScreenNotifier,
      builder: (context, selectedScreen, child) {
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
              icon: Icon(FluentIcons.emoji_smile_slight_20_filled),
              label: "Me",
            ),
          ],

          onDestinationSelected: (value) =>
              selectedScreenNotifier.value = value,
          selectedIndex: selectedScreen,
          
      
        );
      },
    );
  }
}
