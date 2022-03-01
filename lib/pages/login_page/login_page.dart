import 'package:flutter/material.dart';
import 'widgets/validation.dart';
import 'widgets/login_button.dart';
import 'widgets/my_form.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     elevation: 0, backgroundColor: Colors.white.withOpacity(1.0)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Вход',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 36,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: FormBoxField(
                    hasObsecure: false,
                    label: 'email',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: FormBoxField(
                    hasObsecure: true,
                    label: 'Пароль',
                  ),
                ),
                const SizedBox(
                  height: 66,
                ),
                const LoginButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
