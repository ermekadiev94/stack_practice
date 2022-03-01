import 'package:flutter/material.dart';
import 'package:stack_task/pages/second_page/second_page.dart';
import 'pages/login_page/login_page.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        'news_list_page': (context) => const SecondPage(),
      },
    );
  }
}
