import 'package:budz_test/src/data/model/user/user_model.dart';
import 'package:budz_test/src/domain/services/dio_services.dart';

class SessionRepository {
  final DioServices _dioServices;
  SessionRepository(this._dioServices);

  Future<UserModel> getUser() async {
    await _dioServices.init();
    try {
      final response = await _dioServices.get('/users/1');
      return UserModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
