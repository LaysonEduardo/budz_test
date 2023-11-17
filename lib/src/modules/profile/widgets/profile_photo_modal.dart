import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../presentation/icons/budz_icons_icons.dart';
import '../../../presentation/widgets/budz_bottom_modal.dart';
import '../../../presentation/widgets/budz_button.dart';

class ProfilePhotoModal extends StatelessWidget {
  const ProfilePhotoModal({super.key});

  @override
  Widget build(BuildContext context) {
    return BudzBottomModal(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const SizedBox(height: 32),
            BudzButton(
              icon: const Icon(BudzIcons.camera),
              label: I18n.of(context).takePicture,
              borderRadius: BorderRadius.circular(16),
              textStyle: const AppFonts.light(16),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            BudzButton(
              icon: const Icon(BudzIcons.add_photo),
              label: I18n.of(context).choosePicture,
              borderRadius: BorderRadius.circular(16),
              textStyle: const AppFonts.light(16),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
