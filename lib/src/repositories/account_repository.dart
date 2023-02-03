import '../utils/api_base_helper.dart';

class AccountRepository {
  Future<dynamic> createSession({required String body}) async {
    dynamic data = await ApiBaseHelper().post(endpoint: 'sessions', body: body);
    return data;
  }
}
