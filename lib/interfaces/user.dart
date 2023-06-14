import 'package:simblue/models/user.dart';
import 'package:simblue/utils/dio.dart';

UserApi _userApi = UserApi();

UserApi get userApi => _userApi;

class UserApi {

  Future<User> getUser() async {
    var response = await authDio.get("/user");
    return User.fromJson(response.data);
  }
}
