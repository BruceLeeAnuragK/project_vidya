import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper._();
  static final ApiHelper apiHelper = ApiHelper._();
  Dio dio = Dio();
  final String api = "https://server-ija7.onrender.com/data";

  Future<List?> assign() async {
    Response response = await dio.get(api);
    if (response.statusCode == 200) {
      List data = response.data['class2'];
      return data;
    } else {
      return null;
    }
  }
}
