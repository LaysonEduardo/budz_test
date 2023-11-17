import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/modules/profile/page/deleted_confirmation_profile_screen.dart';
import 'package:budz_test/src/presentation/widgets/budz_solid_button.dart';
import 'package:flutter/material.dart';

import '../../../presentation/widgets/budz_radio_button.dart';

class DeleteProfileScreen extends StatefulWidget {
  const DeleteProfileScreen({super.key});

  @override
  State<DeleteProfileScreen> createState() => _DeleteProfileScreenState();
}

class _DeleteProfileScreenState extends State<DeleteProfileScreen> {
  String currentValue = '';
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      Text(
                        I18n.of(context).deleteReason,
                        style: const AppFonts.bold(24),
                      ),
                      const SizedBox(height: 24),
                      //This buttons can be changed to a list if the delete reasons come from an API
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason1,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason2,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason3,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason4,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason5,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason6,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      BudzRadioButton(
                        currentValue: currentValue,
                        value: I18n.of(context).deleteReason7,
                        onPressed: (value) {
                          setState(() {
                            currentValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  BudzSolidButton(
                    text: I18n.of(context).continueText.toUpperCase(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    onPressed: () {
                      // in really the logic behind this button should be in the bloc and not in the view
                      // with methods to delete user data, check user session, etc
                      // but because this is a test I will leave it here in simple way
                      if (currentValue.isNotEmpty) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  )
                ],
              ),
            ),
            const DeletedConfirmationProfile(),
          ],
        ),
      ),
    );
  }
}
