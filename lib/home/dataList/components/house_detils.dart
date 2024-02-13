//import 'package:flutter/cupertino.dart';

import 'package:app_final/model_app/house.dart';
import 'package:app_final/text/comtiner_move.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class HouseDetils extends StatefulWidget {
  // const HouseDetils({super.key});
  final House house;
  const HouseDetils(this.house, {super.key});
  House get getHouse {
    return house;
  }

  @override
  State<HouseDetils> createState() => _HouseDetilsState();
}

class _HouseDetilsState extends State<HouseDetils> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    Duration difference = now.difference(widget.house.time);

    int days = difference.inDays;
    int hours =
        difference.inHours.remainder(24); // الساعات المتبقية بعد حساب الأيام

    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_bold(
                      hitex: 'D.L${widget.getHouse.price.toStringAsFixed(3)}',
                      st: 28,
                    ),
                    const SizedBox(height: 5),
                    text_bold(hitex: widget.getHouse.address, st: 15),
                  ],
                ),
                text_bold(
                  hitex: '$days days and $hours hours ago',
                  st: 15,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 30),
            child: text_bold(
              hitex: 'House information',
              st: 15,
            ),
          ),
          Container(
            height: 130,
            color: const Color.fromARGB(255, 254, 253, 253),
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                continer(
                    text: widget.getHouse.sqfeet.toString(),
                    st: 20,
                    text_: 'meter',
                    st_: 18),
                continer(
                    text: widget.getHouse.bedroom.toString(),
                    st: 20,
                    text_: 'Bedrooms',
                    st_: 18),
                continer(
                    text: widget.getHouse.bathroom.toString(),
                    st: 20,
                    text_: 'Bathrooms',
                    st_: 18),
                continer(
                    text: widget.getHouse.livingroom.toString(),
                    st: 20,
                    text_: 'Livingroom',
                    st_: 18),
                continer(
                    text: widget.getHouse.garages.toString(),
                    st: 20,
                    text_: 'Guestsroom',
                    st_: 18),
                continer(
                    text: widget.getHouse.kitchen.toString(),
                    st: 20,
                    text_: 'Kitchin',
                    st_: 18),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30 * 4,
            ),
            child: Text(
              widget.getHouse.description,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 86).withOpacity(0.5),
                height: 1.3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
