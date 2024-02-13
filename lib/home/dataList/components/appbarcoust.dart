import 'package:app_final/text/continer_appbar.dart';
import 'package:flutter/material.dart';

class AppBarCoust extends StatelessWidget {
  const AppBarCoust({super.key});

  String get exampleGetter => 'Example Getter Value';
  set exampleSetter(String value) {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: SizedBox(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop(context);
              },
              child: const continer_appbar(
                ic: Icons.arrow_back_rounded,
              ),
            ),
            const continer_appbar(
              ic: Icons.favorite_border_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
