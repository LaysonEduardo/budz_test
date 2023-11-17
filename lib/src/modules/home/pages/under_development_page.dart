import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UnderDevelopmentPage extends StatelessWidget {
  const UnderDevelopmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          I18n.of(context).inDevelopment,
          style: const AppFonts.semiBold(26),
        ),
        SvgPicture.asset('assets/images/vectors/sad_dog.svg'),
      ],
    );
  }
}
