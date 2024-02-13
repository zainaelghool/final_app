//import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class text_bold extends StatelessWidget {
   String hitex;
   double st;

   text_bold({
    super.key,
    required this.hitex,
    required this.st,
  });
   String get getText {
    return hitex;
  }

  double get getFontSize {
    return st;
  }
   set setText(String newText) {
    hitex = newText;
  }

  set setSt(double newSt) {
    st = newSt;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      hitex,
      style: TextStyle(
        fontSize: st,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 0, 0, 86),
      ),
    );
  }
}
