import 'package:budz_test/src/core/utils/app_colors.dart';
import 'package:budz_test/src/core/utils/app_fonts.dart';
import 'package:budz_test/src/modules/home/bloc/home_bloc.dart';
import 'package:budz_test/src/modules/home/bloc/home_event.dart';
import 'package:budz_test/src/modules/home/bloc/home_state.dart';
import 'package:budz_test/src/modules/home/pages/home_profile_page.dart';
import 'package:budz_test/src/presentation/icons/budz_icons_icons.dart';
import 'package:budz_test/src/modules/home/components/navigation_button.dart';
import 'package:budz_test/src/modules/home/pages/under_development_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../generated/l10n.dart';
import 'pages/home_error_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final PageController pageController = PageController();
  final bloc = Modular.get<HomeBloc>();

  @override
  void initState() {
    bloc.add(HomeFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is HomeSuccessState) {
            return PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [
                const UnderDevelopmentPage(),
                const UnderDevelopmentPage(),
                const UnderDevelopmentPage(),
                HomeProfilePage(),
              ],
            );
          }
          if (state is HomeFailState) {
            return const HomeErrorPage();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        enableFeedback: true,
        backgroundColor: Colors.white,
        onTap: (value) {
          if (bloc.state is HomeSuccessState) {
            setState(() {
              pageController.jumpToPage(
                value,
              );
            });
          }
        },
        selectedItemColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const AppFonts.regular(14),
        selectedLabelStyle: const AppFonts.regular(
          14,
          color: AppColors.primary,
        ),
        items: [
          NavigationButton.primary(
            icon: const Icon(BudzIcons.home, size: 24),
            label: I18n.of(context).home,
          ),
          NavigationButton.primary(
            icon: const Icon(BudzIcons.grid_view),
            label: I18n.of(context).jorneys,
          ),
          NavigationButton.primary(
            icon: const Icon(BudzIcons.chat, size: 26),
            label: I18n.of(context).chatbot,
          ),
          NavigationButton.primary(
            icon: const Icon(BudzIcons.person),
            label: I18n.of(context).profile,
          ),
        ],
      ),
    );
  }
}
