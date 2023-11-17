import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_fonts.dart';

class BudzDropdown extends StatelessWidget {
  final String field;
  final List<String> values;
  final String value;
  final EdgeInsetsGeometry padding;
  final Function(String?)? onChanged;
  const BudzDropdown({
    super.key,
    required this.field,
    this.padding = const EdgeInsets.all(0),
    required this.values,
    required this.value,
    this.onChanged,
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
          DropdownButtonFormField(
            value: value,
            items: values.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            elevation: 1,
            style: const AppFonts.light(16, color: AppColors.font_gray),
            focusColor: Colors.blue,
            dropdownColor: Colors.white,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  color: AppColors.gray_darken,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  color: AppColors.gray_darken,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  color: AppColors.gray_darken,
                  width: 1.5,
                ),
              ),
            ),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
