import 'package:flutter/material.dart';

class LogoFeeling extends StatelessWidget {
  const LogoFeeling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/newspaper.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
