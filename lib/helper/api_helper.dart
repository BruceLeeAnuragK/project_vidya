import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper._();
  static final ApiHelper apiHelper = ApiHelper._();
  Dio dio = Dio();
  final String api = "https://server-ija7.onrender.com/class2";

  Future<List?> assign() async {
    Response response = await dio.get(api);
    if (response.statusCode == 200) {
      List data =
          response.data[0]['chapters'][0]['part'][0]['topics'][0]['exercise'];
      return data;
    } else {
      return null;
    }
  }

  Future<Map?> assignAll() async {
    Response response = await dio.get(api);
    if (response.statusCode == 200) {
      Map data = response.data[0];
      return data;
    } else {
      return null;
    }
  }
}
