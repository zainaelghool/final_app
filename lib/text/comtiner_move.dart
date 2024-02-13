import 'package:app_final/text/text_bold.dart';
import 'package:flutter/material.dart';

class continer extends StatefulWidget {
  String text;
  double st;
  String text_;
  double st_;

  continer({
    super.key,
    required this.text,
    required this.st,
    required this.text_,
    required this.st_,
  });

  String get getText => text;
  double get getSt => st;
  String get getText_ => text_;
  double get getSt_ => st_;

  set setText(String newText) => {text = newText};
  set setSt(double newSt) => {st = newSt};
  set setText_(String newText_) => {text_ = newText_};
  set setSt_(double newSt_) => {st_ = newSt_};

  @override
  State<continer> createState() => _continerState();
}

class _continerState extends State<continer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 30),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 86),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text_bold(hitex: widget.text, st: widget.st),
            const SizedBox(
              height: 5,
            ),
            text_bold(hitex: widget.text_, st: widget.st_),
          ],
        ),
      ),
    );
  }
}
