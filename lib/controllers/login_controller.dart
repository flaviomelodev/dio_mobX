//Autenticação do Login

import 'package:flutter/material.dart';

import '../services/prefs_service.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);
  /*Quando digita login e senha o onChange é ativado e pega os valores
  digitados e passa para SetLogin e SetPass*/
  String? _login;

  setLogin(String value) => _login = value;
  String? _pass;

  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'admin' && _pass == '123') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
