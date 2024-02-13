import 'package:app_final/home/dataList/deitalis_screen.dart';
import 'package:app_final/model_app/house.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';
//import 'deitalis_screen.dart';
class Houses extends StatefulWidget {
  const Houses({super.key});

  //const Houses({Key key}) : super(key: key);

  @override
  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  House getHouse(int index) {
    return houseList[index];
  }

  void setHouseFavorite(int index, bool isFavorite) {
    setState(() {
      houseList[index].isFav = isFavorite;
    });
  }

  Widget _buildHouses(BuildContext context, int index) {
    House house = getHouse(index); // استخدم الـ getHouse للحصول على كائن House
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40 / 2),
        child: SizedBox(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (v) => DetailsScreen(
                            house: house,
                          ),
                        ));
                      },
                      child: Image(
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                        image: AssetImage(house.imagePath),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: house.isFav
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Color.fromARGB(255, 255, 7, 7),
                              )
                            : const Icon(
                                Icons.favorite_border_rounded,
                                color: Color.fromARGB(255, 15, 15, 15),
                              ),
                        onPressed: () {
                          setHouseFavorite(
                              index,
                              !house
                                  .isFav); // استخدم setHouseFavorite لتحديث القيمة
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  text_bold(
                    hitex: 'D.L${house.price.toStringAsFixed(3)}',
                    st: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: text_bold(
                      hitex: house.address,
                      st: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  text_bold(hitex: '${house.bedroom} bedroms/', st: 15),
                  text_bold(hitex: '${house.bathroom} bathrooms/', st: 15),
                  text_bold(
                    hitex: '${house.sqfeet} meter',
                    st: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: houseList.length,
        itemBuilder: (context, index) {
          return _buildHouses(context, index);
        },
      ),
    );
  }
}
