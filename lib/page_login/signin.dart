import 'package:app_final/app/test.dart';
import 'package:app_final/home/home_screens.dart';
import 'package:app_final/page_login/butten.dart';
import 'package:app_final/page_login/registerpage.dart';
import 'package:app_final/sql/db_helper.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:app_final/text/text_fild_password.dart';
import 'package:app_final/text/txt_fild.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isvisebl = false;
  String get username => usernameController.text;
  set username(String value) => usernameController.text = value;

  String get password => passwordController.text;
  set password(String value) => passwordController.text = value;
  final formkey = GlobalKey<FormState>();
  dynamic userType;
  DBHelper dbHelper = DBHelper();

  void signin() async {
    List<Map<String, dynamic>> users = await dbHelper.getUsers();
    bool userExists = users.any(
        (user) => user['username'] == username && user['password'] == password);

    if (userExists) {
      print('تم حفظ الايميل و كلمة المرور');
      Map<String, dynamic> user = {
        'username': username,
        'password': password,
        'status': userType,
      };

      final insertedUserId = await dbHelper.insertUser(user);

      users = await dbHelper.getUsers();
      print(users);

      if (userType == 'customer') {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Homescreen(),
        ));
      } else if (userType == 'advertiser') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => test(),
          ),
        );
      }
    } else {
      print('تاكد من كلمة المرور');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/home_57.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text_bold(
                      hitex: 'login',
                      st: 40,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    textfild_my(
                        controlleri: usernameController,
                        hitex: 'username',
                        obscurtext: false,
                        ic: const Icon(Icons.person),
                        kibord: TextInputType.text),
                    const SizedBox(
                      height: 30,
                    ),
                    textefild(
                      controlleri: passwordController,
                      hitex: 'password',
                      obscurtext: !isvisebl,
                      ic: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisebl = !isvisebl;
                          });
                        },
                        icon: Icon(
                          isvisebl ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: "customer",
                          groupValue: userType,
                          onChanged: (value) {
                            setState(() {
                              userType = value;
                            });
                          },
                        ),
                        text_bold(
                          hitex: 'Customer',
                          st: 20,
                        ),
                        const SizedBox(width: 20),
                        Center(
                          child: Radio<String>(
                            value: "advertiser",
                            groupValue: userType,
                            onChanged: (value) {
                              setState(() {
                                userType = value;
                              });
                            },
                          ),
                        ),
                        text_bold(
                          hitex: 'Advertiser',
                          st: 20,
                        ),
                      ],
                    ),
                    boutton(
                        onTap: () {
                          //login();
                          setState(() {
                            if (formkey.currentState!.validate()) {}
                            signin();
                          });
                        },
                        text: "Sign In"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text_bold(
                          hitex: 'Don`t have account?',
                          st: 10,
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (v) => const RegistPage()));
                          },
                          child: text_bold(hitex: 'SIGN UP', st: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
