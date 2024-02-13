import 'package:flutter/material.dart';
import 'package:app_final/app/AddDataScreen.dart';
import 'package:app_final/app/DisplayDataScreen.dart';
import 'package:app_final/page_login/signin.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:app_final/text/textwhite.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: text_bold(
            hitex: 'Home',
            st: 26,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 86),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddDataScreen()),
                );
              },
              child: text_white(
                hitex: 'Add Data',
                st: 15,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 86),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DisplayDataScreen()),
                );
              },
              child: text_white(
                hitex: 'Display Data',
                st: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
