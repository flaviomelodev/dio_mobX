import 'package:dio/dio.dart';

import 'http_client.dart';

//Implementação do Dio -> já pode aparecer na tela
class DioClient implements IHttpClient {
  final dio = Dio();

  @override
  Future get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
