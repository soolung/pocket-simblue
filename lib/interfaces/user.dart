import 'package:simblue/models/user.dart';
import 'package:simblue/utils/dio.dart';

UserApi _userApi = UserApi();

UserAPi get userApi => _userApi;

class UserApi {

  Future<User> getUser() async {
    var response = await dio.get("/user");
    return User.fromJson(response.data);
  }
}