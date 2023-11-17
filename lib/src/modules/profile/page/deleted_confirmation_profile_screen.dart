import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/presentation/widgets/budz_solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

class DeletedConfirmationProfile extends StatelessWidget {
  const DeletedConfirmationProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            //Put logic to return to login screen here
            Modular.to.navigate('/');
          },
          icon: const Icon(Icons.close_rounded),
        ),
        centerTitle: true,
        title: SvgPicture.asset('assets/images/vectors/logo.svg'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset('assets/images/vectors/bye_dog.svg'),
                  const SizedBox(height: 16),
                  Text(
                    I18n.of(context).accountDeleted,
                    style: const AppFonts.semiBold(20),
                  ),
                  Text(
                    I18n.of(context).accountDeletedDeletedMessage,
                    style: const AppFonts.light(16, color: AppColors.font_gray),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              BudzSolidButton(
                text: I18n.of(context).continueText,
                padding: const EdgeInsets.symmetric(vertical: 16),
                onPressed: () {
                  //Put logic to return to login screen here
                  Modular.to.navigate('/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
