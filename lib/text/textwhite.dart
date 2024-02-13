//import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class text_white extends StatelessWidget {
   String hitex;
   double st;

  text_white({
    Key? key,
    required this.hitex,
    required this.st,
  });

  String get hitexValue => hitex;

  double get stValue => st;

  set hitexValue(String newValue) {
    hitex = newValue;
  }

  set stValue(double newValue) {
    st = newValue;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      hitex,
      style: TextStyle(
        fontSize: st,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 251, 251, 252),
      ),
    );
  }
}