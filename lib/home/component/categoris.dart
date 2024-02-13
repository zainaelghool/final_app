import 'package:app_final/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';

//import 'package:flutter/rendering.dart';

class categoris extends StatefulWidget {
  const categoris({super.key});

  @override
  State<categoris> createState() => _categorisState();
}

class _categorisState extends State<categoris> {
  int selectedcatogoryindex = 0;

  set setSelectedCategoryIndex(int index) {
    setState(() {
      selectedcatogoryindex = index;
    });
  }

  int get getSelectedCategoryIndex {
    return selectedcatogoryindex;
  }

  // List<String> categoryList = ['', '', '', ''];
  Widget _buildCategory(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedcatogoryindex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 40 / 3),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40 / 2),
          decoration: BoxDecoration(
            color: selectedcatogoryindex == index
                ? const Color.fromARGB(255, 18, 4, 100)
                : const Color.fromARGB(255, 233, 231, 241),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: selectedcatogoryindex == index
                      ? const Color.fromARGB(255, 251, 251, 251)
                      : const Color.fromARGB(255, 11, 11, 11)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 40 / 2, bottom: 40),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return _buildCategory(context, index);
            }),
      ),
    );
  }
}
