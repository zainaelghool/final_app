import 'package:app_final/home/dataList/components/buttons_buttom.dart';
import 'package:app_final/home/dataList/components/carouselimges.dart';
import 'package:app_final/model_app/house.dart';
import 'package:flutter/material.dart';

import 'components/appbarcoust.dart';
import 'components/house_detils.dart';

class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({super.key, required this.house});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(children: [
            Stack(
              // alignment: Alignment.topCenter,
              children: [
                CarouselImges(widget.house.morImgesUrl),
                const AppBarCoust()
              ],
            ),
            HouseDetils(widget.house),
          ]),
          BottomButtons(widget.house),
        ],
      ),
    );
  }

  House get getHouse => widget.house;
}
