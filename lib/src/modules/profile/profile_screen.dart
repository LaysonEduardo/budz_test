import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/modules/profile/bloc/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/profile_bloc.dart';
import 'widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  final bloc = Modular.get<ProfileBloc>();
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          I18n.of(context).editProfile,
          style: const AppFonts.regular(22),
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is ProfileSuccessState) {
            return ProfileBody();
          } else if (state is ProfileFailState) {
            return Center(
              child: Text(I18n.of(context).loadError),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
