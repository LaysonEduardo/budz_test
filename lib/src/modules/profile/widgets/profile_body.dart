import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/modules/profile/widgets/profile_delete_modal.dart';
import 'package:budz_test/src/modules/profile/widgets/profile_photo_modal.dart';
import 'package:budz_test/src/presentation/widgets/budz_field.dart';
import 'package:budz_test/src/presentation/widgets/budz_solid_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../presentation/widgets/budz_dropdown.dart';
import '../bloc/profile_bloc.dart';

class ProfileBody extends StatelessWidget {
  final bloc = Modular.get<ProfileBloc>();

  ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: CircleAvatar(
            maxRadius: 50,
            backgroundImage: CachedNetworkImageProvider(bloc.user.photoUrl),
          ),
        ),
        TextButton(
          child: Text(
            I18n.of(context).changePhoto.toUpperCase(),
            style: const AppFonts.semiBold(16, color: AppColors.primary),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              useRootNavigator: true,
              backgroundColor: Colors.white,
              elevation: 0,
              isScrollControlled: true,
              builder: (context) {
                return const ProfilePhotoModal();
              },
            );
          },
        ),
        BudzTextField(
          field: I18n.of(context).name,
          initialValue: bloc.user.fullname,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          onChanged: (value) {},
        ),
        const SizedBox(height: 24),
        BudzTextField(
          field: I18n.of(context).email,
          initialValue: bloc.user.email,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          onChanged: (value) {},
        ),
        const SizedBox(height: 24),
        BudzDropdown(
          field: I18n.of(context).gender,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          values: const ['Masculino', 'Feminino', 'Outro', 'Não informado'],
          value: bloc.user.gender,
          onChanged: (value) {},
        ),
        const SizedBox(height: 24),
        BudzSolidButton(
          text: I18n.of(context).save.toUpperCase(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              useRootNavigator: true,
              backgroundColor: Colors.white,
              elevation: 0,
              isScrollControlled: true,
              builder: (context) {
                return ProfileDeleteModal();
              },
            );
          },
          child: Text(
            I18n.of(context).deleteAccount,
            style: const AppFonts.semiBold(16),
          ),
        ),
      ],
    );
  }
}
