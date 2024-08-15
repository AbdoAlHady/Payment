import 'package:dio/dio.dart';

class ApieService {
  final Dio dio = Dio();

  Future<Response> post(
      {required body,
      required String url,
      required String token,
      String? contentType}) async {
    return await dio.post(url,
        data: body,
        options: Options(contentType: contentType, headers: {
          'Authorization': 'Bearer $token',
        }));
  }
}
