import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../generated/l10n.dart';
import '../../../core/utils/app_fonts.dart';

class HomeErrorPage extends StatelessWidget {
  const HomeErrorPage({super.key});

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
