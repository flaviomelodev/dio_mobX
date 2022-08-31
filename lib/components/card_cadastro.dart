import 'package:flutter/material.dart';

class CardCadastro extends StatefulWidget {
  const CardCadastro({Key? key}) : super(key: key);

  @override
  State<CardCadastro> createState() => _CardCadastroState();
}

class _CardCadastroState extends State<CardCadastro> {
  //controllers
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _userNameTextController = TextEditingController();

  //Por que? Para que serve??
  final double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        child: Card(
          child: Form(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LinearProgressIndicator(value: _formProgress),
              Text('CADASTRAR', style: Theme.of(context).textTheme.headline4),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: _firstNameTextController,
                  decoration: const InputDecoration(hintText: 'PRIMEIRO NOME'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _lastNameTextController,
                  decoration: const InputDecoration(hintText: 'Último Nome'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: _userNameTextController,
                  decoration: const InputDecoration(hintText: 'USUÁRIO'),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.disabled)
                        ? null
                        : Colors.red;
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.disabled)
                        ? null
                        : Colors.blue;
                  }),
                ),
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('/home');
                },
                child: const Text('CADASTRAR'),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
