import 'package:flutter/material.dart';

class CarouselImges extends StatefulWidget {
  final List<String> imgelist;

  const CarouselImges(this.imgelist, {super.key});

  List<String> get getImgelist {
    return imgelist;
  }

  @override
  State<CarouselImges> createState() => _CarouselImgesState();
}

class _CarouselImgesState extends State<CarouselImges> {
  int _currentIndex = 0;

  int get getCurrentIndex {
    return _currentIndex;
  }

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.35,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: widget.getImgelist.length,
            onPageChanged: (index) {
              setCurrentIndex(index);
            },
            itemBuilder: (context, index) {
              return Image.asset(
                widget.getImgelist[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.getImgelist.length,
                  (index) => Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: getCurrentIndex == index
                          ? const Color.fromARGB(255, 10, 10, 10)
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
