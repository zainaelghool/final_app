import 'package:app_final/page_login/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(appName: 'your app name'));
}

class MyApp extends StatelessWidget {
  final String appName;

  const MyApp({super.key, required this.appName});

  String get getAppName => appName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: getAppName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
