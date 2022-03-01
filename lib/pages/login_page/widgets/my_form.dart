import 'package:flutter/material.dart';
import 'validation.dart';
import 'obscure_check.dart';

class FormBoxField extends StatefulWidget {
  FormBoxField({Key? key, required this.hasObsecure, required this.label})
      : super(key: key);

  bool hasObsecure;

  final String label;

  @override
  State<FormBoxField> createState() => _FormBoxFieldState();
}

class _FormBoxFieldState extends State<FormBoxField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.label != 'email' ? widget.hasObsecure : false,
      validator: (value) {
        return widget.label == 'email'
            ? emailValidation(value)
            : passwordValidation(value);
      },
      decoration: InputDecoration(
          labelStyle: const TextStyle(color: Color(0xffA98CE1)),
          labelText: widget.label == 'email' ? 'Email' : 'Пароль',
          hintStyle: const TextStyle(color: Color(0xffA98CE1)),
          hintText: widget.label == 'email'
              ? 'Введите свой email'
              : 'Введите свой пароль',
          filled: true,
          fillColor: const Color(0xFFF9F8FF),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffD1B5FF), width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffD1B5FF), width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          suffixIcon: widget.label != 'email'
              ? InkWell(
                  onTap: () {
                    setState(() {
                      widget.hasObsecure = !widget.hasObsecure;
                    });
                  },
                  child: ObscureCheck(obsecure: widget.hasObsecure))
              : null),
    );
  }
}
