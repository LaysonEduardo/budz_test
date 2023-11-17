import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class BudzRadioButton extends StatelessWidget {
  final String currentValue;
  final String value;
  final Function(String) onPressed;

  const BudzRadioButton({
    super.key,
    required this.currentValue,
    required this.value,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = currentValue == value;

    return InkWell(
      onTap: () {
        onPressed.call(value);
      },
      borderRadius: BorderRadius.circular(12),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        constraints: const BoxConstraints(
          maxWidth: 550,
          minHeight: 50,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondary : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.transparent : AppColors.gray_darken,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            currentValue == value
                ? const Icon(
                    Icons.radio_button_checked,
                    color: AppColors.blue_lighten,
                  )
                : const Icon(
                    Icons.radio_button_unchecked,
                    color: AppColors.font_gray,
                  ),
            const SizedBox(width: 16),
            Text(
              value,
              style: const AppFonts.light(
                16,
                color: AppColors.font_gray,
              ),
            )
          ],
        ),
      ),
    );
  }
}
