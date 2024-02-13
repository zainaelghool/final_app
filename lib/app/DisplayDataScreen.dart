import 'package:app_final/sql/db_helper.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayDataScreen extends StatefulWidget {
  const DisplayDataScreen({super.key});

  @override
  _DisplayDataScreenState createState() => _DisplayDataScreenState();
}

class _DisplayDataScreenState extends State<DisplayDataScreen> {
  List<Map<String, dynamic>>? ads;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final data = await DBHelper.getAds();
    setState(() {
      ads = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text_bold(
          hitex: 'Display Data',
          st: 26,
        ),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: DBHelper.getAds(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ads = snapshot.data;
            return ListView.builder(
              itemCount: ads!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 40 / 2),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: GestureDetector(
                              child: const Image(
                                fit: BoxFit.cover,
                                height: 200,
                                width: double.infinity,
                                image: AssetImage(
                                  'assets/images/home_1.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          text_bold(
                            hitex: ' ${ads![index]['price']} D.L',
                            st: 25,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          text_bold(
                            hitex: ads![index]['address'],
                            st: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          text_bold(
                            hitex:
                                ' ${ads![index]['number_of_bedrooms']} Bedrooms/',
                            st: 15,
                          ),
                          text_bold(
                            hitex:
                                ' ${ads![index]['number_of_bathrooms']} Bathrooms/',
                            st: 15,
                          ),
                          text_bold(
                            hitex: ' ${ads![index]['area']} metra/',
                            st: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Text('Error fetching data');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
