import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

  //Aguardar 3 seg. e mudar para LoginPage
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        //color: Colors.white,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 43, 43, 43),
                Color.fromARGB(255, 40, 97, 189),
              ]),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/news.png',
            width: 400,
            height: 400,
          ),
          const SizedBox(height: 10),
          const CircularProgressIndicator(
              color: Color.fromARGB(255, 34, 45, 120)),
        ]),
      ),
    );
  }
}
