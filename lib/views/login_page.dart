import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
      backgroundColor: const Color.fromARGB(255, 26, 34, 75),
      body: SingleChildScrollView(
        child: ResponsiveRowColumn(
          // rowMainAxisAlignment: MainAxisAlignment.center,
          rowPadding: const EdgeInsets.all(30),
          columnPadding: const EdgeInsets.all(30),
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 500,
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
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
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
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 60, 8),
                          child: CustomTextLogin(
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 12, right: 25),
                              child: Icon(
                                Icons.person_outline,
                                color: Color.fromARGB(255, 26, 34, 75),
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
                              child: Icon(
                                Icons.lock_outline,
                                color: Color.fromARGB(255, 26, 34, 75),
                              ),
                            ),
                            hintText: 'Senha',
                            onChaged: _controller.setPass,
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              CustomButtonLogin(loginController: _controller),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
