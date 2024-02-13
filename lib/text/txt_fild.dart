import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textfild_my extends StatelessWidget {
  TextEditingController controlleri;
  String hitex;
  bool obscurtext;
  Widget ic;
  TextInputType kibord;

  textfild_my({
    super.key,
    required this.controlleri,
    required this.hitex,
    required this.obscurtext,
    required this.ic,
    required this.kibord,
  });

  TextEditingController get controlleriValue => controlleri;

  String get hitexValue => hitex;

  bool get obscurtextValue => obscurtext;

  Widget get icValue => ic;

  TextInputType get kibordValue => kibord;

  set controlleriValue(TextEditingController newValue) {
    controlleri = newValue;
  }

  set hitexValue(String newValue) {
    hitex = newValue;
  }

  set obscurtextValue(bool newValue) {
    obscurtext = newValue;
  }

  set icValue(Widget newValue) {
    ic = newValue;
  }

  set kibordValue(TextInputType newValue) {
    kibord = newValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 86),
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 98, 97, 97),
                ),
              ),
            ),
            child: TextFormField(
              controller: controlleri,
              keyboardType: kibord,
              maxLines: null,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              obscureText: obscurtext,
              decoration: InputDecoration(
                icon: ic,
                border: InputBorder.none,
                hintText: hitex,
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 145, 145, 144),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
