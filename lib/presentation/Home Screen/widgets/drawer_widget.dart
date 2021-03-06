import 'package:company_profit_bloc/domain/core/shared_preferences/DarkThemeProvider.dart';
import 'package:company_profit_bloc/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatelessWidget {
  DarkThemeProvider themeChange;
  DrawerWidget(
   this.themeChange, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: themeChange.darkTheme
            ? const Color.fromARGB(255, 58, 50, 50)
            : Colors.white,
        // backgroundColor: Colors.grey.withOpacity(0.5),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xff264d91),
                    Color.fromARGB(255, 88, 140, 232),
                  ])),
                  accountName: Text("Billionaires",
                      style: GoogleFonts.sahitya(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600))),
                  accountEmail: const Text(
                    "",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: const CircleAvatar(
                    child: Text("\$",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    backgroundColor: Color.fromARGB(41, 79, 145, 255),
                    //backgroundImage: AssetImage('assets/images/logo.png'),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: Text(
                    "All Billionaires",
                    style: TextStyle(
                        color: themeChange.darkTheme
                            ? Colors.white
                            : Colors.black),
                  ),
                  onTap: () {
                    indexNotifier.value = 0;
                    // indexNotifier.notifyListeners();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.filter),
                  title: Text("Filter by",
                      style: TextStyle(
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black)),
                  onTap: () {
                    indexNotifier.value = 1;
                    // indexNotifier.notifyListeners();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.business),
                  title: Text("Industry",
                      style: TextStyle(
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black)),
                  onTap: () {
                    indexNotifier.value = 2;
                    // indexNotifier.notifyListeners();
                    Navigator.pop(context);
                  },
                ),
              ]),
        ));
  }
}
