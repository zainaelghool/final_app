import 'package:app_final/app/DisplayDataScreen.dart';
import 'package:app_final/page_login/signin.dart';
import 'package:app_final/text/continer_appbar.dart';
import 'package:app_final/text/text_bold.dart';
import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  int _selectedCategoryIndex = 0;

  set _setSelectedCategoryIndex(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  int get _getSelectedCategoryIndex {
    return _selectedCategoryIndex;
  }

  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  void show() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const DisplayDataScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30 * 2),
      child: SizedBox(
        height: size.height * 0.22,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry>[
                      PopupMenuItem(
                        child: ListTile(
                          leading: const Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 0, 0, 86),
                          ),
                          title: text_bold(
                            hitex: 'Logout',
                            st: 20,
                          ),
                          onTap: _logout,
                        ),
                      ),
                    ];
                  },
                  child: const continer_appbar(
                    ic: Icons.sort_rounded,
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry>[
                      PopupMenuItem(
                        child: ListTile(
                          leading: const Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 0, 0, 86),
                          ),
                          title: text_bold(
                            hitex: 'Display New Advertiser',
                            st: 20,
                          ),
                          onTap: show,
                        ),
                      ),
                    ];
                  },
                  child: const continer_appbar(
                    ic: Icons.insights_rounded,
                  ),
                ),
                //  const continer_appbar(
                //   ic: Icons.insights_rounded,
                //),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text_bold(
                  hitex: 'City',
                  st: 25,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                text_bold(
                  hitex: 'Tripoli',
                  st: 40,
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 237, 238, 247),
            ),
          ],
        ),
      ),
    );
  }
}
