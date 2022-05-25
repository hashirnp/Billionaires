import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../../application/user/user_bloc.dart';
import '../../domain/core/AdHelper/adhelper.dart';
import '../../domain/core/shared_preferences/DarkThemeProvider.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/listItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.initialEvent());
    });

    List<UserResponse> dummyList = [];
    final themeChange = Provider.of<DarkThemeProvider>(context);

    final key = GlobalKey<ScaffoldState>();

    return Scaffold(
      drawer: const DrawerWidget(),
      key: key,
      appBar: appBarWidget(themeChange: themeChange, context: context),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  );
                } else if (state.isError) {
                  return const Center(
                    child: Text('Error'),
                  );
                } else if (state.response.isNotEmpty) {
                  dummyList.clear();
                  dummyList.addAll(state.response);
                  return ListView.separated(
                    //asdasd
                    physics: const ClampingScrollPhysics(),
                    //25/05/2022  
                    itemBuilder: (ctx, i) {
                      final item = state.response[i];
                      return ListItemWidget(item);
                    },
                    separatorBuilder: (ctx, i) {
                      return const SizedBox();
                    },
                    itemCount: state.response.length,
                    shrinkWrap: true,
                  );
                } else {
                  return const Center(
                    child: Text('Error'),
                  );
                }
              },
            )),
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
        ],
      ),
    );
  }
}
