import 'package:company_profit_bloc/application/filter_bloc/filter_bloc.dart';
import 'package:company_profit_bloc/domain/core/di/injectable.dart';
import 'package:company_profit_bloc/presentation/Index%20Screen/index_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'application/indsutry/industry_bloc.dart';
import 'application/user/user_bloc.dart';
import 'domain/core/shared_preferences/DarkThemeProvider.dart';
import 'domain/core/shared_preferences/ThemeData.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) {
      return themeChangeProvider;
    }, child: Consumer<DarkThemeProvider>(
      builder: (context, value, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (ctx) => getIt<UserBloc>()),
            BlocProvider(create: (ctx) => getIt<FilterBloc>()),
            BlocProvider(create: (ctx) => getIt<IndustryBloc>())
          ],
          child: MaterialApp(
              title: 'Flutter Demo',
              theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              debugShowCheckedModeBanner: false,
              home: const IndexScreen()),
        );
      },
    ));
  }
}
