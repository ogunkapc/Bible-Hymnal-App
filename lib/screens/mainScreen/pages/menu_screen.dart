import 'package:bible/screens/menu/settings.dart';
import 'package:bible/utils/constants/image_constants.dart';
import 'package:bible/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Menu",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            MenuItem(
              iconPath: ImageConstants.iconUser,
              title: "Sign in",
            ),
            const Divider(),
            MenuItem(
              iconPath: ImageConstants.iconVerseOfTheDay,
              title: "Verse of the day",
            ),
            MenuItem(
              iconPath: ImageConstants.iconHighlights,
              title: "Highlights",
            ),
            MenuItem(
              iconPath: ImageConstants.iconShare,
              title: "Share app",
            ),
            const Divider(),
            MenuItem(
              iconPath: ImageConstants.iconDonate,
              title: "Donate",
            ),
            MenuItem(
              iconPath: ImageConstants.iconSettings,
              title: "Settings",
              destination: const SettingsScreen(),
            ),
          ],
        ));
  }
}
