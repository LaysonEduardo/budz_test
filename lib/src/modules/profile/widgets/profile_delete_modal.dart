import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/presentation/widgets/budz_solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/l10n.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../presentation/widgets/budz_bottom_modal.dart';
import '../bloc/profile_bloc.dart';

class ProfileDeleteModal extends StatelessWidget {
  final bloc = Modular.get<ProfileBloc>();

  ProfileDeleteModal({super.key});

  @override
  Widget build(BuildContext context) {
    return BudzBottomModal(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              I18n.of(context).sureDeleteAccount,
              style: const AppFonts.bold(20),
              textAlign: TextAlign.center,
            ),
            SvgPicture.asset('assets/images/vectors/sad_dog.svg'),
            const SizedBox(height: 16),
            Text(
              I18n.of(context).deleteConfirmation,
              style: const AppFonts.light(
                16,
                color: AppColors.font_gray,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            BudzSolidButton(
              text: I18n.of(context).deleteAccount.toUpperCase(),
              backgroundColor: AppColors.orange,
              onPressed: () {
                //TODO change to navigate
                Modular.to.pushNamed('/delete');
              },
            ),
            const SizedBox(height: 16),
            TextButton(
              child: Text(
                I18n.of(context).cancel.toUpperCase(),
                style: const AppFonts.semiBold(16, color: AppColors.primary),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
