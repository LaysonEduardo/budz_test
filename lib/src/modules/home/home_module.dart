import 'package:budz_test/src/modules/home/bloc/home_bloc.dart';
import 'package:budz_test/src/modules/home/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../profile/page/delete_profile_screen.dart';
import '../profile/profile_module.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<HomeBloc>(
      HomeBloc.new,
      config: BindConfig(
        onDispose: (bloc) => bloc.close(),
      ),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomeScreen());
    r.module(
      '/profile/',
      module: ProfileModule(),
    );
    r.child('/delete', child: (context) => const DeleteProfileScreen());
  }
}
