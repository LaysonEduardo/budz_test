import 'dart:io';

import 'package:budz_test/generated/l10n.dart';
import 'package:budz_test/src/presentation/ui/ui_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UiServices.init();

  runApp(
    ModularApp(
      module: AppModule(),
      child: MaterialApp.router(
        title: 'Budz - Test',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        localizationsDelegates: const [
          I18n.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Platform.localeName.isEmpty
            ? const Locale('en', 'US')
            : Locale(Platform.localeName.split('_')[0]),
        supportedLocales: const [
          Locale('en'),
          Locale('pt'),
        ],
      ),
    ),
  );
}
