import 'package:app_final/text/textwhite.dart';
import 'package:flutter/material.dart';

class continer_button extends StatefulWidget {
  final String text;
  final double st;
  final IconData ic;

  const continer_button({
    super.key,
    required this.text,
    required this.st,
    required this.ic,
  });

  String get getText => text;

  double get getSt => st;

  IconData get getIcon => ic;

  @override
  State<continer_button> createState() => _continer_buttonState();
}

class _continer_buttonState extends State<continer_button> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
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
            Icon(
              widget.ic,
              color: Colors.white,
            ),
            const SizedBox(
              width: 9,
            ),
            text_white(
              hitex: widget.text,
              st: widget.st,
            )
          ],
        ),
      ),
    ]);
  }
}
