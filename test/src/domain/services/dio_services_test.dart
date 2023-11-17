import 'package:budz_test/src/data/model/user/user_model.dart';
import 'package:budz_test/src/domain/services/dio_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final dio = Dio();
  final services = DioServices(dio: dio, isMock: true);
  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
  });
  test('GET Method in user', () async {
    await services.init();
    final response = await services.get('/users/1');
    final user = UserModel.fromJson(response.data);
    expect(response.statusCode, 200);
    expect(user.id, '48E792A6-EF69-467E-B9FB-E4C272AE23AF');
    debugPrint(response.statusCode.toString());
    debugPrint(user.username);
    debugPrint('success');
  });
}
