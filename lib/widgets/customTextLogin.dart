import 'package:flutter/material.dart';

class CustomTextLogin extends StatelessWidget {
  final Function(String) onChaged;
  final String hintText;
  final bool obscureText;
  final Widget prefixIcon;
  const CustomTextLogin(
      {Key? key,
      required this.onChaged,
      this.obscureText = false,
      required this.hintText,
      required this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Material(
        elevation: 7,
        borderRadius: BorderRadius.circular(40),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            contentPadding: const EdgeInsets.only(top: 14),
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            alignLabelWithHint: true,
            prefixIcon: prefixIcon,
          ),
          obscureText: obscureText,
          onChanged: onChaged,
        ),
      ),
    );
  }
}
