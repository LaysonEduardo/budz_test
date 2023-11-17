import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/presentation/widgets/budz_solid_button.dart';
import 'package:flutter/material.dart';

class DeleteProfileScreen extends StatefulWidget {
  const DeleteProfileScreen({super.key});

  @override
  State<DeleteProfileScreen> createState() => _DeleteProfileScreenState();
}

class _DeleteProfileScreenState extends State<DeleteProfileScreen> {
  String currentValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Text(
                    I18n.of(context).deleteReason,
                    style: const AppFonts.bold(24),
                  ),
                  //This buttons can be changed to a list if the delete reasons come from an API
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  // BudzRadioButton(
                  //   currentValue: currentValue,
                  //   value: I18n.of(context).deleteReason1,
                  // ),
                  BudzSolidButton(
                    text: I18n.of(context).continueText.toUpperCase(),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
