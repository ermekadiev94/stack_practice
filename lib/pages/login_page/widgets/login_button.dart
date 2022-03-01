import 'package:flutter/material.dart';
import 'validation.dart';

class LoginButton extends StatelessWidget {
  const LoginButton();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shadowColor: const Color(0xffF90640),
          elevation: 5,
          primary: const Color(0xffF90640),
          fixedSize: const Size(132, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          if (email_valid == null && pass_valid == null) {
            Navigator.pushNamed(context, 'news_list_page');
          }
        }
      },
      child: const Text(
        'Войти',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
