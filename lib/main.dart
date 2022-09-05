import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'views/details_page.dart';
import 'views/details_page2.dart';
import 'views/home_page.dart';
import 'views/login_page.dart';
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
      theme: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Color.fromARGB(255, 26, 34, 75),
      )),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ]),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
