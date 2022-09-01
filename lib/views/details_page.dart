import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../services/dio_client.dart';
import '../services/json_placeholder_service.dart';
import '../services/prefs_service.dart';
import '../store/home_page_controller.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
      //AnimatedBuilder porque ele escuta o ChangeNotifier
      //vem do controller
      body: Observer(
        builder: (_) => ListView.separated(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            //pegando todos os dados vindos do controller
            final post = controller.posts[index];
            return ListTile(
              leading: Text(post.id.toString()),
              title: Text(
                post.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(post.body,
                  style: const TextStyle(
                      fontSize: 14, fontStyle: FontStyle.italic)),
            );
          },
          separatorBuilder: (_, __) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
