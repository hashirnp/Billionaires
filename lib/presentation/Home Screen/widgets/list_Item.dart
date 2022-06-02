import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../domain/User/Model/user_response/user_response.dart';
import '../../../domain/core/AdHelper/adhelper.dart';
import '../../Detail Screen/detail_screen.dart';

class ListItemWidget extends StatefulWidget {
  final UserResponse item;
  const ListItemWidget(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  InterstitialAd? _interstitialAd;

  bool _isInterstitialAdReady = false;

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;

          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              // _moveToHome();
            },
          );

          _isInterstitialAdReady = true;
        },
        onAdFailedToLoad: (err) {
          if (kDebugMode) {
            print('Failed to load an interstitial ad: ${err.message}');
          }
          _isInterstitialAdReady = false;
        },
      ),
    );
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var url = "";
    var str = "//";
    try {
      if (widget.item.person!.squareImage != null) {
        if (widget.item.person!.imageExists!) {
          if (widget.item.person!.squareImage!.startsWith(str)) {
            url = "https:" + widget.item.person!.squareImage!;
          } else {
            url = widget.item.person!.squareImage!;
          }
        } else {
          if (widget.item.person!.squareImage != null) {
            if (widget.item.person!.squareImage!.isNotEmpty) {
              if (widget.item.person!.squareImage!.startsWith(str)) {
                url = "https:" + widget.item.person!.squareImage!;
              } else {
                url = widget.item.person!.squareImage!;
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
    double finalworth = widget.item.finalWorth! / 1000;
    finalworth = double.parse(finalworth.toStringAsFixed(1));
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 53, 40, 40),
                  blurRadius: 5.8,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.outer),
            ]),
        child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                GFListTile(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(0),
                  avatar: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14),
                            bottomLeft: Radius.circular(14)),
                        image: DecorationImage(
                          image: NetworkImage(
                            url,
                          ),
                          fit: BoxFit.fill,
                        )),
                  ),
                  title: Text(
                    widget.item.rank.toString() +
                        " - " +
                        widget.item.personName!,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subTitle: Text(
                    widget.item.industries![0],
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic),
                  ),
                  icon: Text("\$ $finalworth B ",
                      style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(255, 10, 95, 11),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                  onTap: () {
                    if (!_isInterstitialAdReady) {
                      _loadInterstitialAd();
                    }
                    if (widget.item.rank! % 2 == 0 && _isInterstitialAdReady) {
                      _interstitialAd?.show();
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => DetailScreen(list: widget.item)));
                  },
                )
              ],
            )),
      ),
    );
  }
}
