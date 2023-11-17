import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/data/model/user/user_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePageHeader extends StatelessWidget {
  final UserModel user;
  const ProfilePageHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 32,
            backgroundImage: CachedNetworkImageProvider(user.photoUrl),
          ),
          const SizedBox(width: 20),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                user.fullname,
                style: const AppFonts.bold(22),
              ),
              // SizedBox(height: 5),
              Text(
                user.email,
                style: const AppFonts.light(
                  16,
                  color: AppColors.font_gray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
