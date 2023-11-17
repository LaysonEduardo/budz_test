import 'package:budz_test/src/modules/profile/bloc/profile_bloc.dart';
import 'package:budz_test/src/modules/profile/page/delete_profile_screen.dart';
import 'package:budz_test/src/modules/profile/profile_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends Module {
  @override
  void binds(i) {
    i.add<ProfileBloc>(
      () => ProfileBloc(),
      config: BindConfig(
        onDispose: (bloc) => bloc.close(),
      ),
    );
  }

  @override
  void routes(r) {
    r.child('/delete', child: (context) => const DeleteProfileScreen());
    r.child('/', child: (context) => ProfileScreen());
  }
}
