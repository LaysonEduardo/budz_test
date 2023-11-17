import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BudzBottomModal extends StatelessWidget {
  final Widget child;
  const BudzBottomModal({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                  width: 40,
                ),
                Container(
                  height: 4,
                  width: 64,
                  decoration: BoxDecoration(
                    color: AppColors.gray_darken.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.gray_darken.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.close),
                  ),
                ),
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }
}
