import 'package:budz_test/src/data/model/user/user_model.dart';
import 'package:budz_test/src/modules/home/bloc/home_event.dart';
import 'package:budz_test/src/modules/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/repository/session_repository.dart';

final homeBloc = Modular.get<HomeBloc>();

class HomeBloc extends Bloc<HomeEvents, HomeState> {
  late UserModel user;
  final SessionRepository _session = Modular.get<SessionRepository>();

  HomeBloc() : super(HomeLoadingState()) {
    on<HomeFetch>(
      (event, emit) async {
        emit(HomeLoadingState());
        try {
          user = await _session.getUser();
          // Simulate a delay
          await Future.delayed(const Duration(seconds: 2));
          emit(HomeSuccessState());
        } catch (e) {
          emit(HomeFailState());
        }
      },
    );
  }

  void onProfilePressed() {
    Modular.to.pushNamed('/profile/');
  }

  void logout() {}
}
