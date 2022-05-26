import 'dart:developer';
import 'dart:io';

import 'package:company_profit_bloc/domain/User/Model/user_response/financial_asset.dart';
import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../domain/core/shared_preferences/DarkThemeProvider.dart';
import 'widgets/section1.dart';
import 'widgets/text_widget.dart';

class DetailScreen extends StatelessWidget {
  final UserResponse list;
  const DetailScreen({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var url = "";
    var str = "//";
    try {
      if (list.person!.squareImage != null) {
        if (list.person!.imageExists!) {
          if (list.person!.squareImage!.startsWith(str)) {
            url = "https:" + list.person!.squareImage!;
          } else {
            url = list.person!.squareImage!;
          }
        } else {
          if (list.person!.squareImage != null) {
            if (list.person!.squareImage!.isNotEmpty) {
              if (list.person!.squareImage!.startsWith(str)) {
                url = "https:" + list.person!.squareImage!;
              } else {
                url = list.person!.squareImage!;
              }
            } else {
              url =
                  "https://specials-images.forbesimg.com/imageserve/6050f48ca1ab099ed6e290cc/416x416.jpg?background=000000&cropX1=0&cropX2=800&cropY1=0&cropY2=800";
            }
          }
        }
      } else {
        url =
            "https://specials-images.forbesimg.com/imageserve/6050f48ca1ab099ed6e290cc/416x416.jpg?background=000000&cropX1=0&cropX2=800&cropY1=0&cropY2=800";
      }
    } on Exception catch (e) {
      log(e.toString());
      log(url);
    }
    double finalworth = list.finalWorth! / 1000;
    finalworth = double.parse(finalworth.toStringAsFixed(1));
    return Scaffold(
      appBar: AppBar(
          title: list.personName != null
              ? Text(
                  list.personName!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      //overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                )
              : const SizedBox(),
          actions: [
            IconButton(
                onPressed: () async {
                  String message = list.personName! +
                      "\n" +
                      findBday(list.birthDate!).toString() +
                      " Years Old" +
                      "\n" +
                      "Wealth of " +
                      finalworth.toString() +
                      " Billion US Dollar" +
                      "\n";

                  message = message + "\nAbout" + "\n";
                  for (int i = 0; i < list.abouts!.length; i++) {
                    message += "\t 👉 \t\t" + list.abouts![i] + "\n";
                  }

                  message = message + "\nBIO" + "\n";
                  for (int i = 0; i < list.bios!.length; i++) {
                    message += "\t 👉 \t\t" + list.bios![i] + "\n";
                  }
                  final Directory directory = 
                      await getApplicationDocumentsDirectory();
                  final String filePath = '${directory.path}/image.jpg';
                  final http.Response response = await http.get(Uri.parse(url));
                  final File file = File(filePath);
                  await file.writeAsBytes(response.bodyBytes);
 
                  Share.shareFiles([filePath],text: message);
                },
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ))
          ]),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
            height: double.infinity,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(), // new
              scrollDirection: Axis.vertical,

              children: [
                Secion1(url: url, list: list, finalworth: finalworth),
                const Text(
                  "\t Bio",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                TextWidget(list: list.bios!),
                list.abouts != null
                    ? const Text(
                        "\t About ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    : const SizedBox(),
                list.abouts != null
                    ? TextWidget(list: list.abouts!)
                    : const SizedBox(),
                list.financialAssets != null
                    ? const Text(
                        "\t Financial Assets ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    : const SizedBox(),
                list.financialAssets != null
                    ? FinancialAssetsWidget(list: list.financialAssets!)
                    : const SizedBox(),
              ],
            )),
      ),
    );
  }
}

class FinancialAssetsWidget extends StatefulWidget {
  final List<FinancialAsset> list;
  const FinancialAssetsWidget({Key? key, required this.list}) : super(key: key);

  @override
  State<FinancialAssetsWidget> createState() => _FinancialAssetsWidgetState();
}

class _FinancialAssetsWidgetState extends State<FinancialAssetsWidget> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 1000),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          widget.list[index].isExpanded = !isExpanded;
        });
      },
      children: widget.list.map<ExpansionPanel>((FinancialAsset item) {
        return ExpansionPanel(
          backgroundColor: themeChange.darkTheme ? Colors.black : Colors.white,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              tileColor: Colors.white,
              title: Text(item.companyName!),
            );
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.ticker != null ? "Ticker : " + item.ticker! : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              Text(
                item.exchange != null ? "Exchange : " + item.exchange! : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              Text(
                item.numberOfShares != null
                    ? "Number of Shares : " + item.numberOfShares!.toString()
                    : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              Text(
                item.sharePrice != null
                    ? "Share Price : " +( item.sharePrice!*item.exchangeRate!).toString()
                    : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              Text(
                item.currencyCode != null
                    ? "Currency Code : " + item.currencyCode!
                    : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              // Text(
              //   item.exchangeRate != null
              //       ? "Exchange Rate : " + item.exchangeRate!.toString()
              //       : '',
              //   style: TextStyle(
              //     color: themeChange.darkTheme ? Colors.white : Colors.black,
              //   ),
              // ),
              Text(
                item.interactive != null
                    ? "Interactive : " + item.interactive!.toString()
                    : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              Text(
                item.currentPrice != null
                    ? "Current Price : " + item.currentPrice!.toString()
                    : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
              Text(
                item.exerciseOptionPrice != null
                    ? "Exercise Option Price : " +
                        item.exerciseOptionPrice!.toString()
                    : '',
                style: TextStyle(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
