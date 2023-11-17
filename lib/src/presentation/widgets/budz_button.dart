import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class BudzButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final VoidCallback onPressed;
  final BorderRadiusGeometry borderRadius;
  final bool borderTop;
  final bool borderBottom;
  final bool borderLeft;
  final bool borderRight;
  final TextStyle textStyle;
  const BudzButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.borderRadius = BorderRadius.zero,
    this.borderTop = true,
    this.borderBottom = true,
    this.borderLeft = true,
    this.borderRight = true,
    this.textStyle = const AppFonts.light(16),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
          border: Border(
            top: borderTop
                ? const BorderSide(
                    color: AppColors.gray_darken,
                    width: 1,
                  )
                : BorderSide.none,
            bottom: borderBottom
                ? const BorderSide(
                    color: AppColors.gray_darken,
                    width: 1,
                  )
                : BorderSide.none,
            left: borderLeft
                ? const BorderSide(
                    color: AppColors.gray_darken,
                    width: 1,
                  )
                : BorderSide.none,
            right: borderRight
                ? const BorderSide(
                    color: AppColors.gray_darken,
                    width: 1,
                  )
                : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: icon),
                Text(
                  label,
                  style: textStyle,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 28,
                color: AppColors.gray_darken,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
