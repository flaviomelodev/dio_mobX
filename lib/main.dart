import 'package:flutter/material.dart';

import 'views/details_page.dart';
import 'views/home_page.dart';
import 'views/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/home': (_) => const HomePage(),
        '/details': (_) => const DetailsPage(),
      },
    );
  }
}
