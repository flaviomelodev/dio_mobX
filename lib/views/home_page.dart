import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../services/dio_client.dart';
import '../services/json_placeholder_service.dart';

import '../store/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: const Text('Notícias'),
        centerTitle: true,
      ),
      //AnimatedBuilder porque ele escuta o ChangeNotifier
      //vem do controller
      body: Observer(
        builder: (_) {
          return Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              child: ListView.separated(
                itemCount: controller.posts.length,
                itemBuilder: (context, index) {
                  //pegando todos os dados vindos do controller
                  final post = controller.posts[index];
                  return ListTile(
                    leading: Text(post.id.toString()),
                    trailing: const Icon(Icons.arrow_forward),
                    title: Text(
                      post.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => Navigator.of(context).pushNamed('/details'),
                    // subtitle: Text(post.body,
                    //     style: const TextStyle(
                    //         fontSize: 14, fontStyle: FontStyle.italic)),
                  );
                },
                separatorBuilder: (_, __) {
                  return const Divider();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
