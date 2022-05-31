
import 'package:company_profit_bloc/main.dart';
import 'package:company_profit_bloc/presentation/Filter%20Screen/filter_screen.dart';
import 'package:company_profit_bloc/presentation/Home%20Screen/home_screen.dart';
import 'package:company_profit_bloc/presentation/Industry%20Screen/industry_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../../application/filter_bloc/filter_bloc.dart';
import '../../application/indsutry/industry_bloc.dart';
import '../../domain/core/AdHelper/adhelper.dart';
import '../../domain/core/shared_preferences/DarkThemeProvider.dart';
import '../Home Screen/widgets/appbar_widget.dart';
import '../Home Screen/widgets/drawer_widget.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeScreen(),
      const FilterScreen(),
      const IndustryScreen(),
    ];

    final themeChange = Provider.of<DarkThemeProvider>(context);

    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
        drawer: const DrawerWidget(),
        key: key,
        appBar: appBarWidget(themeChange: themeChange, context: context),
        body: SafeArea(
          child: Stack(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Expanded(
                child: ValueListenableBuilder(
                    valueListenable: indexNotifier,
                    builder: (context, int i, _) {
                      if (i == 1) {
                        BlocProvider.of<FilterBloc>(context).add(
                            const FilterEvent.filterQuery(
                                filterQuery: "youngest"));
                      }
                      if (i == 2) {
                        BlocProvider.of<IndustryBloc>(context).add(
                            const IndustryEvent.initialEvent(
                                indsutryQuery: 'Automotive'));
                      }
                      return pages[i];
                    }),
              ),
            ),
            if (_isBannerAdReady)
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: _bannerAd.size.width.toDouble(),
                  height: _bannerAd.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd),
                ),
              ),
          ]),
        ));
  }
}
