// ignore: must_be_immutable

import 'package:flutter/material.dart';

class ObscureCheck extends StatefulWidget {
  const ObscureCheck({Key? key, required this.obsecure}) : super(key: key);
  final bool obsecure;

  @override
  State<ObscureCheck> createState() => _ObscureCheckState();
}

class _ObscureCheckState extends State<ObscureCheck> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.obsecure ? Icons.visibility : Icons.visibility_off,
      color: widget.obsecure ? const Color(0xffA98CE1) : Colors.grey,
    );
  }
}
