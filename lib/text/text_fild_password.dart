import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textefild extends StatelessWidget {
  final TextEditingController controlleri;
  final String hitex;
  final bool obscurtext;
  Widget ic;

  textefild({
    super.key,
    required this.controlleri,
    required this.hitex,
    required this.obscurtext,
    required this.ic,
  });

  bool isvisebl = false;

  TextEditingController get getController => controlleri;
  String get getHitText => hitex;
  bool get getObscureText => obscurtext;
  Widget get getIcon => ic;

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
      child: Column(children: [
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            obscureText: obscurtext,
            decoration: InputDecoration(
                icon: const Icon(Icons.lock),
                border: InputBorder.none,
                hintText: hitex,
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 145, 145, 144),
                  fontSize: 20,
                ),
                suffixIcon: ic),
          ),
        )
      ]),
    );
  }
}
