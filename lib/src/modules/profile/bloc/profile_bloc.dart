import 'package:budz_test/src/data/model/user/user_model.dart';
import 'package:budz_test/src/modules/home/bloc/home_bloc.dart';
import 'package:budz_test/src/modules/profile/bloc/profile_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserModel user = homeBloc.user;
  ProfileBloc() : super(ProfileSuccessState()) {
    on<SaveProfile>((event, emit) {
      emit(ProfileLoadingState());
      Future.delayed(const Duration(seconds: 2), () {
        emit(ProfileSuccessState());
      });
    });
  }
}
