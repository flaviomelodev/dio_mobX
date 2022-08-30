//Contrato -> as classes serão implementadas
//a partir dessa

abstract class IHttpClient {
  Future<dynamic> get(String url);
}
