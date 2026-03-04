import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';
import 'package:opay_clone/core/theme/app_styles.dart';
import 'package:opay_clone/features/navigation/navigation_notifier.dart';
import 'package:opay_clone/features/re_widgets/navbar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedScreenNotifier,
      builder: (context, selectedScreen, child) {
        return NavigationBar(
          destinations: [
            navbarItem("Home", FluentIcons.person_home_16_filled),
            navbarItem("Rewards", Icons.diamond),

            navbarItem("Finance", FluentIcons.chart_multiple_20_regular),
            navbarItem("Cards", FluentIcons.card_ui_24_filled),
            navbarItem("Me", Icons.person),
          ],

          selectedIndex: selectedScreen,
          onDestinationSelected: (value) =>
              selectedScreenNotifier.value = value,

          backgroundColor: AppColors.whiteColor,
          indicatorColor: Colors.transparent,
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3000),
          ),
          elevation: 10,
          height: 65,

          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                color: AppColors.javaColor,
                fontWeight: FontWeight.bold,
              );
            }
            return const TextStyle(color: Colors.grey);
          }),
        );
      },
    );
  }
}
