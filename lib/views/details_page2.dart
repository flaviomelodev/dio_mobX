import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../services/dio_client.dart';
import '../services/json_placeholder_service.dart';
import '../services/prefs_service.dart';
import '../store/home_page_controller.dart';

class DetailsPage2 extends StatefulWidget {
  const DetailsPage2({Key? key}) : super(key: key);

  @override
  State<DetailsPage2> createState() => _DetailsPage2State();
}

class _DetailsPage2State extends State<DetailsPage2> {
  final controller =
      HomePageControllerStore(JsonPlaceholderService(DioClient()));

  @override
  void initState() {
    super.initState();
    controller.fetchAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (route) => true);
              },
              icon: const Icon(Icons.logout_outlined)),
        ],
        title: const Text('Detalhes das Notícias'),
        centerTitle: true,
      ),
      body: Observer(
          builder: (_) => ListView.builder(itemBuilder: ((context, index) {
                final post = controller.posts[index];
                return Column(
                  children: [
                    if (post.body.isNotEmpty) Text(post.body),
                  ],
                );
              }))),
    );
  }
}
