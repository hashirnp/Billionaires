
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // backgroundColor: Colors.grey.withOpacity(0.5),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.blueAccent,
              child: const Center(
                child: Text(
                  'This app created by Hashir Np',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () async {
                      final Uri url = Uri.parse(
                          'https://play.google.com/store/apps/dev?id=8340046743059560670&hl=en&gl=US');

                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.asset(
                      'assets/images/playstore.webp',
                      height: 40,
                      width: 40,
                    )),
                GestureDetector(
                    onTap: () async {
                      final mailtoLink = Mailto(
                        to: ['binaryarchitectbusiness@gmail.com'],
                        //cc: ['cc1@example.com', 'cc2@example.com'],
                        subject: 'Hai',
                        body: 'I would like to contact you for ....',
                      );
                      await launchUrlString('$mailtoLink');
                    },
                    child: Image.asset(
                      'assets/images/gmail.png',
                      height: 40,
                      width: 40,
                    )),
              ],
            )
          ]),
    ));
  }
}
