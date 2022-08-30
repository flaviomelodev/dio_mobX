import '../models/post_model.dart';
import 'http_client.dart';

const url = 'https://jsonplaceholder.typicode.com/posts';

//recebe a implementação dependente do contrato
//dessa forma poderia usar Http também
class JsonPlaceholderService {
  final IHttpClient client;

  JsonPlaceholderService(this.client);

  Future<List<PostModel>> getPost() async {
    final body = await client.get(url);
    //se não colocar "as List" vai dar erro no test
    return (body as List).map((map) => PostModel.fromJson(map)).toList();
  }
}
