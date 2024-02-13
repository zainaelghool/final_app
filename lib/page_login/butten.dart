import 'package:app_final/text/textwhite.dart';
import 'package:flutter/material.dart';

class boutton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const boutton({super.key, required this.onTap, required this.text});

  VoidCallback? get getOnTap => onTap;
  String get getText => text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.4,
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 18, 4, 100),
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(244, 71, 71, 72),
              offset: Offset(0, 7),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text_white(
              hitex: text,
              st: 25,
            ),
          ],
        ),
      ),
    );
  }
}
