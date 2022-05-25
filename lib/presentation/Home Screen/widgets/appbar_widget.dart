import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import '../../../domain/core/shared_preferences/DarkThemeProvider.dart';

AppBar appBarWidget({required DarkThemeProvider themeChange,required BuildContext context}) {
  return AppBar(title: const Text('Billionaires'), actions: [
    IconButton(
        onPressed: () {
          
        },
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        )),
    IconButton(
        tooltip: 'Share Application',
        onPressed: () {
          LaunchReview.launch();
        },
        icon: const Icon(
          Icons.share,
          color: Colors.white,
        )),
    IconButton(
        onPressed: () {
          themeChange.darkTheme = !themeChange.darkTheme;
        },
        icon: themeChange.darkTheme
            ? const Icon(
                Icons.lightbulb_outline,
                color: Colors.white,
              )
            : const Icon(
                Icons.lightbulb,
                color: Colors.white,
              ))
  ]);
}
