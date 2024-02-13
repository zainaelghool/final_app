import 'package:app_final/home/component/app_bar.dart';
import 'package:app_final/home/component/categoris.dart';
import 'package:flutter/material.dart';
import 'component/Houses.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [Appbar(), categoris(), Houses()],
          ),
          //BottomButtons()
        ],
      ),
    );
  }

  String get exampleGetter => 'Example Getter Value';
  set exampleSetter(String value) {
    // Do something with the value
  }

  // Add more setters and getters as needed
}
