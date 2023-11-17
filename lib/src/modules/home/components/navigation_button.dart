import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class NavigationButton {
  NavigationButton._();

  static BottomNavigationBarItem primary({
    required Icon icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: icon,
      ),
      label: label,
      activeIcon: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: icon,
      ),
    );
  }
}
