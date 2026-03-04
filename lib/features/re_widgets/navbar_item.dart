import 'package:flutter/material.dart';
import 'package:opay_clone/core/theme/app_colors.dart';

NavigationDestination navbarItem(String label, IconData icon) {
  return NavigationDestination(
    icon: Icon(icon),
    selectedIcon: Icon(icon, color: AppColors.javaColor),
    label: label,
  );
}