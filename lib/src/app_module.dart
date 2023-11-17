import 'package:budz_test/src/modules/home/home_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/repository/session_repository.dart';
import 'domain/services/dio_services.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(() => DioServices(dio: Dio(), isMock: true));
    i.addSingleton<SessionRepository>(
      SessionRepository.new,
    );
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
