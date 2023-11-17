// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I18n {
  I18n();

  static I18n? _current;

  static I18n get current {
    assert(_current != null,
        'No instance of I18n was loaded. Try to initialize the I18n delegate before accessing I18n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I18n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I18n();
      I18n._current = instance;

      return instance;
    });
  }

  static I18n of(BuildContext context) {
    final instance = I18n.maybeOf(context);
    assert(instance != null,
        'No instance of I18n present in the widget tree. Did you add I18n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I18n? maybeOf(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  /// `Início`
  String get home {
    return Intl.message(
      'Início',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Jornadas`
  String get jorneys {
    return Intl.message(
      'Jornadas',
      name: 'jorneys',
      desc: '',
      args: [],
    );
  }

  /// `Chatbot`
  String get chatbot {
    return Intl.message(
      'Chatbot',
      name: 'chatbot',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get profile {
    return Intl.message(
      'Perfil',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Em desenvolvimento`
  String get inDevelopment {
    return Intl.message(
      'Em desenvolvimento',
      name: 'inDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Erro ao carregar`
  String get loadError {
    return Intl.message(
      'Erro ao carregar',
      name: 'loadError',
      desc: '',
      args: [],
    );
  }

  /// `Editar Perfil`
  String get editProfile {
    return Intl.message(
      'Editar Perfil',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Meus Pets`
  String get myPets {
    return Intl.message(
      'Meus Pets',
      name: 'myPets',
      desc: '',
      args: [],
    );
  }

  /// `Ferramentas`
  String get tools {
    return Intl.message(
      'Ferramentas',
      name: 'tools',
      desc: '',
      args: [],
    );
  }

  /// `Gerenciar Assinatura`
  String get manageSubscription {
    return Intl.message(
      'Gerenciar Assinatura',
      name: 'manageSubscription',
      desc: '',
      args: [],
    );
  }

  /// `Alterar Senha`
  String get changePassword {
    return Intl.message(
      'Alterar Senha',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Sair`
  String get logout {
    return Intl.message(
      'Sair',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Versão {version}`
  String version(Object version) {
    return Intl.message(
      'Versão $version',
      name: 'version',
      desc: '',
      args: [version],
    );
  }

  /// `Alterar Foto`
  String get changePhoto {
    return Intl.message(
      'Alterar Foto',
      name: 'changePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Nome`
  String get name {
    return Intl.message(
      'Nome',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Gênero`
  String get gender {
    return Intl.message(
      'Gênero',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Salvar`
  String get save {
    return Intl.message(
      'Salvar',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Excluir Conta`
  String get deleteAccount {
    return Intl.message(
      'Excluir Conta',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Tirar foto`
  String get takePicture {
    return Intl.message(
      'Tirar foto',
      name: 'takePicture',
      desc: '',
      args: [],
    );
  }

  /// `Escolher foto`
  String get choosePicture {
    return Intl.message(
      'Escolher foto',
      name: 'choosePicture',
      desc: '',
      args: [],
    );
  }

  /// `Tem certeza que deseja encerrar a jornada do seu melhor amigo?`
  String get sureDeleteAccount {
    return Intl.message(
      'Tem certeza que deseja encerrar a jornada do seu melhor amigo?',
      name: 'sureDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Todas as suas informações e a evolução do seu pet no aplicativo serão apagadas. Essa ação não pode ser desfeita.`
  String get deleteConfirmation {
    return Intl.message(
      'Todas as suas informações e a evolução do seu pet no aplicativo serão apagadas. Essa ação não pode ser desfeita.',
      name: 'deleteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancel {
    return Intl.message(
      'Cancelar',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Conta pra gente, qual o motivo da exclusão?`
  String get deleteReason {
    return Intl.message(
      'Conta pra gente, qual o motivo da exclusão?',
      name: 'deleteReason',
      desc: '',
      args: [],
    );
  }

  /// `Continuar`
  String get continueText {
    return Intl.message(
      'Continuar',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Eu não uso mais o Budz`
  String get deleteReason1 {
    return Intl.message(
      'Eu não uso mais o Budz',
      name: 'deleteReason1',
      desc: '',
      args: [],
    );
  }

  /// `Valores das assinaturas`
  String get deleteReason2 {
    return Intl.message(
      'Valores das assinaturas',
      name: 'deleteReason2',
      desc: '',
      args: [],
    );
  }

  /// `Insatisfação com os serviços oferecidos`
  String get deleteReason3 {
    return Intl.message(
      'Insatisfação com os serviços oferecidos',
      name: 'deleteReason3',
      desc: '',
      args: [],
    );
  }

  /// `Tive problemas técnicos`
  String get deleteReason4 {
    return Intl.message(
      'Tive problemas técnicos',
      name: 'deleteReason4',
      desc: '',
      args: [],
    );
  }

  /// `Conteúdos ruins ou irrelevantes`
  String get deleteReason5 {
    return Intl.message(
      'Conteúdos ruins ou irrelevantes',
      name: 'deleteReason5',
      desc: '',
      args: [],
    );
  }

  /// `Experiência e usabilidade`
  String get deleteReason6 {
    return Intl.message(
      'Experiência e usabilidade',
      name: 'deleteReason6',
      desc: '',
      args: [],
    );
  }

  /// `Outro`
  String get deleteReason7 {
    return Intl.message(
      'Outro',
      name: 'deleteReason7',
      desc: '',
      args: [],
    );
  }

  /// `Sua conta foi excluída`
  String get accountDeleted {
    return Intl.message(
      'Sua conta foi excluída',
      name: 'accountDeleted',
      desc: '',
      args: [],
    );
  }

  /// `É uma pena ver você indo embora! Mas fica tranquilo, estaremos de braços abertos caso queira voltar. Até logo! 💙`
  String get accountDeletedDeletedMessage {
    return Intl.message(
      'É uma pena ver você indo embora! Mas fica tranquilo, estaremos de braços abertos caso queira voltar. Até logo! 💙',
      name: 'accountDeletedDeletedMessage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I18n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
