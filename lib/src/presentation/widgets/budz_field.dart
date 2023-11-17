import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class BudzTextField extends StatelessWidget {
  final String field;
  final String initialValue;
  final String hintText;
  final Function(String) onChanged;
  final EdgeInsetsGeometry padding;
  const BudzTextField({
    super.key,
    required this.field,
    required this.initialValue,
    this.hintText = '',
    required this.onChanged,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      constraints: const BoxConstraints(
        maxWidth: 550,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            field,
            style: const AppFonts.bold(16),
          ),
          TextField(
            controller: TextEditingController(text: initialValue),
            onChanged: onChanged,
            style: const AppFonts.light(16, color: AppColors.font_gray),
            cursorColor: AppColors.primary,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide:
                    BorderSide(color: AppColors.gray_darken, width: 1.5),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide:
                    BorderSide(color: AppColors.gray_darken, width: 1.5),
              ),
              labelText: hintText,
              labelStyle: const AppFonts.light(16, color: AppColors.font_gray),
            ),
          ),
        ],
      ),
    );
  }
}
