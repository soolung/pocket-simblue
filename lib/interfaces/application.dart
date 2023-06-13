import 'package:simblue/models/application.dart';
import 'package:simblue/utils/dio.dart';

ApplicationApi _applicationApi = ApplicationApi();

ApplicationApi get applicationApi => _applicationApi;

class ApplicationApi {
  Future<List<Application>> getPagingApplication() async {
    var response = await dio.get("/application/paging?size=3");
    return (response.data['applicationList'] as List)
        .map((e) => Application.fromJson(e))
        .toList();
  }
}
