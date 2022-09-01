import 'package:flutter/material.dart';

import '../controllers/login_controller.dart';

class CustomButtonLogin extends StatelessWidget {
  final LoginController loginController;
  const CustomButtonLogin({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black54),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 26, 34, 75)),
                onPressed: () {
                  loginController.auth().then((result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Erro ao realizar Login.'),
                          duration: Duration(seconds: 5)));
                    }
                  });
                },
                child: const Text(
                  'ENTRAR',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ),
              ));
  }
}
