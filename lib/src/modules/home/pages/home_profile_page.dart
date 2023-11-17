import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/utils/app_colors.dart';
import '../../../presentation/icons/budz_icons_icons.dart';
import '../../../presentation/widgets/budz_button.dart';
import '../bloc/home_bloc.dart';
import '../components/profile_page_header.dart';

class HomeProfilePage extends StatelessWidget {
  final bloc = Modular.get<HomeBloc>();
  HomeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.gray_lighten,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ProfilePageHeader(user: bloc.user),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BudzButton(
                        icon: const Icon(BudzIcons.paw),
                        label: I18n.of(context).myPets,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        borderBottom: false,
                        onPressed: () {},
                      ),
                      BudzButton(
                        icon: const Icon(BudzIcons.person_outline),
                        label: I18n.of(context).editProfile,
                        borderBottom: false,
                        onPressed: bloc.onProfilePressed,
                      ),
                      BudzButton(
                        icon: const Icon(BudzIcons.clicker),
                        label: I18n.of(context).tools,
                        borderBottom: false,
                        onPressed: () {},
                      ),
                      BudzButton(
                        icon: const Icon(BudzIcons.premium),
                        label: I18n.of(context).manageSubscription,
                        onPressed: () {},
                        borderBottom: false,
                      ),
                      BudzButton(
                        icon: const Icon(BudzIcons.chat),
                        label: I18n.of(context).changePassword,
                        onPressed: () {},
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(16),
                        ),
                      ),
                      const SizedBox(height: 24),
                      BudzButton(
                        icon: const Icon(BudzIcons.logout),
                        label: I18n.of(context).logout,
                        borderRadius: BorderRadius.circular(16),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  I18n.of(context).version('1.0.1'),
                  style: const AppFonts.thin(16, color: AppColors.font_gray),
                ),
                const SizedBox(height: 12),
              ],
            )
          ],
        ),
      ),
    );
  }
}
