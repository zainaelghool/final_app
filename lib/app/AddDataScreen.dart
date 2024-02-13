import 'package:app_final/sql/db_helper.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:app_final/text/textwhite.dart';
import 'package:app_final/text/txt_fild.dart';
import 'package:flutter/material.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  _AddDataScreenState createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _bedroomsController = TextEditingController();
  final TextEditingController _bathroomsController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _number_of_garagesController =
      TextEditingController();
  final TextEditingController _number_of_living_roomsController =
      TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  // TextEditingController _areaController = TextEditingController();
  // إنشاء المزيد من متحكمي النص حسب الحقول الأخرى
  String get address => _addressController.text;
  set address(String value) => _addressController.text = value;

  double get price => double.parse(_priceController.text);
  set price(double value) => _priceController.text = value.toString();

  int get bedrooms => int.parse(_bedroomsController.text);
  set bedrooms(int value) => _bedroomsController.text = value.toString();

  int get bathrooms => int.parse(_bathroomsController.text);
  set bathrooms(int value) => _bathroomsController.text = value.toString();

  double get area => double.parse(_areaController.text);
  set area(double value) => _areaController.text = value.toString();

  String get phone => _phoneController.text;
  set phone(String value) => _phoneController.text = value;

  double get number_of_garages =>
      double.parse(_number_of_garagesController.text);
  set number_of_garages(double value) =>
      _number_of_garagesController.text = value.toString();

  int get number_of_living_rooms =>
      int.parse(_number_of_living_roomsController.text);
  set number_of_living_rooms(int value) =>
      _number_of_living_roomsController.text = value.toString();

  String get description => _descriptionController.text;
  set description(String value) => _descriptionController.text = value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text_bold(
          hitex: 'Add Data',
          st: 26,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      textfild_my(
                        controlleri: _priceController,
                        hitex: 'Price',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.price_change,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _addressController,
                        hitex: 'Address',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.location_city,
                        ),
                        kibord: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _phoneController,
                        hitex: 'phone',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.phone,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _bedroomsController,
                        hitex: 'Bedrooms',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.bed,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _bathroomsController,
                        hitex: 'Bathrooms',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.bathroom,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _number_of_garagesController,
                        hitex: 'Garages',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.garage,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _number_of_living_roomsController,
                        hitex: 'livingroom',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.living,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _areaController,
                        hitex: 'Area',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.area_chart,
                        ),
                        kibord: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      textfild_my(
                        controlleri: _descriptionController,
                        hitex: 'description',
                        obscurtext: false,
                        ic: const Icon(
                          Icons.area_chart,
                        ),
                        kibord: TextInputType.multiline,
                      ),
                    ],
                  ),
                ),
                // إضافة حقول النص الأخرى هنا

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 86),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Map<String, dynamic> newAd = {
                        'address': _addressController.text,
                        'price': double.parse(_priceController.text),
                        'phone': _phoneController.text,
                        'number_of_bedrooms':
                            int.parse(_bedroomsController.text),
                        'number_of_bathrooms':
                            int.parse(_bathroomsController.text),
                        'area': double.parse(_areaController.text),

                        'number_of_garages':
                            double.parse(_number_of_garagesController.text),
                        'number_of_living_rooms':
                            int.parse(_number_of_living_roomsController.text),
                        'description': _descriptionController.text,
                        // إضافة الحقول الأخرى هنا
                      };
                      DBHelper.insertAd(newAd);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Data added successfully')),
                      );
                      _formKey.currentState!.reset();
                    }
                  },
                  child: text_white(
                    hitex: 'Add Data',
                    st: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
