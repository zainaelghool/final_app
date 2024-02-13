import 'package:app_final/messenger/page_chate.dart';
import 'package:app_final/text/continerbutton.dart';
import 'package:flutter/material.dart';
import 'package:app_final/model_app/house.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomButtons extends StatefulWidget {
  final House house;

  const BottomButtons(this.house, {super.key});

  @override
  _BottomButtonsState createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  House get getHouse {
    return widget.house;
  }

  void onButtonPressed() async {
    String phoneNumber = getHouse.address;

    if (await canLaunch('tel:$phoneNumber')) {
      await launch('tel:$phoneNumber');
    } else {
      print('تعذر فتح تطبيق المكالمات');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (v) => const MessengerScreen(),
              ));
            },
            child: const continer_button(
              text: 'Messages',
              st: 18,
              ic: Icons.mail_rounded,
            ),
          ),
          InkWell(
            onTap: () {
              onButtonPressed();
            },
            child: const continer_button(
              text: 'Call',
              st: 18,
              ic: Icons.phone,
            ),
          ),
        ],
      ),
    );
  }
}
