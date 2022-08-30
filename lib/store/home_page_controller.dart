import 'package:mobx/mobx.dart';

import '../models/post_model.dart';
import '../services/json_placeholder_service.dart';
part 'home_page_controller.g.dart';
// UTILIZAR A REATIVIDADE

// ignore: library_private_types_in_public_api
class HomePageControllerStore = _HomePageControllerStore
    with _$HomePageControllerStore;

abstract class _HomePageControllerStore with Store {
  //observable??
  @observable
  var posts = <PostModel>[];

  //DioClient porque implementamos a partir do contrato
  final JsonPlaceholderService _service;

  _HomePageControllerStore(this._service);

  //action??
  @action
  Future<void> fetchAllPosts() async {
    posts = await _service.getPost();
  }
}
