import 'package:app_final/page_login/butten.dart';
import 'package:app_final/sql/db_helper.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:app_final/text/text_fild_password.dart';
import 'package:app_final/text/txt_fild.dart';
import 'package:app_final/page_login/signin.dart';
import 'package:flutter/material.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isvisebl = false;
  String get username => usernameController.text;

  set username(String value) => usernameController.text = value;

  String get password => passwordController.text;
  set password(String value) => passwordController.text = value;

  final formkey = GlobalKey<FormState>();
  DBHelper dbHelper = DBHelper();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  String get confirmPassword => confirmPasswordController.text;

  set confirmPassword(String value) => confirmPasswordController.text = value;

  void register() async {
    if (password == confirmPassword) {
      Map<String, dynamic> user = {
        'username': username,
        'password': password,
        'status': userType,
      };

      final insertedUserId = await dbHelper.insertUser(user);

      List<Map<String, dynamic>> users = await dbHelper.getUsers();
      print(users);
    } else {
      print('تحقق من تطابق كلمة المرور');
    }
  }

  dynamic userType = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  text_bold(hitex: 'Registor New Account', st: 30),
                  const SizedBox(
                    height: 30,
                  ),
                  textfild_my(
                    controlleri: usernameController,
                    hitex: 'username',
                    obscurtext: false,
                    ic: const Icon(Icons.person),
                    kibord: TextInputType.text,
                  ),
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
                  textefild(
                    controlleri: confirmPasswordController,
                    hitex: 'confirm password',
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
                      text_bold(hitex: 'Advertiser', st: 20),
                    ],
                  ),
                  boutton(
                      onTap: () {
                        if (formkey.currentState!.validate()) {}
                        register();
                      },
                      text: "Sign Up"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text_bold(
                        hitex: 'Already a Number?',
                        st: 10,
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (v) => const LoginPage()));
                        },
                        child: text_bold(
                          hitex: 'SIGN IN',
                          st: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
