import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';
import '../widgets/customTextLogin.dart';
import '../widgets/custom_button_login.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  // ignore: prefer_final_fields
  LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            //width: MediaQuery.of(context).size.width * 0.50,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.width * 0.30,
              child: Card(
                shadowColor: const Color.fromARGB(255, 26, 34, 75),
                color: const Color.fromARGB(255, 239, 236, 236),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 26,
                          color: Color.fromARGB(255, 26, 34, 75),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 60, 8),
                          child: CustomTextLogin(
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 12, right: 25),
                              child: Icon(
                                Icons.person_outline,
                              ),
                            ),
                            hintText: 'Usuário',
                            onChaged: _controller.setLogin,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 60, 8),
                          child: CustomTextLogin(
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 12, right: 25),
                              child: Icon(Icons.lock_outline),
                            ),
                            hintText: 'Senha',
                            onChaged: _controller.setPass,
                            obscureText: true,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CustomButtonLogin(loginController: _controller),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          //Lado direito

          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 26, 34, 75),
                    Color.fromARGB(255, 40, 97, 189),
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/news.png',
                  width: 400,
                  height: 400,
                ),
                const Text(
                  'Novas notícias todos os dias!',
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
