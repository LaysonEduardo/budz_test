import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_fonts.dart';

class BudzSolidButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final BoxConstraints constraints;
  final EdgeInsetsGeometry padding;
  const BudzSolidButton({
    super.key,
    required this.text,
    this.backgroundColor = AppColors.primary,
    required this.onPressed,
    this.padding = const EdgeInsets.all(0),
    this.constraints = const BoxConstraints(
      minHeight: 50,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      constraints: constraints,
      child: MaterialButton(
        color: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const AppFonts.semiBold(
                16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
