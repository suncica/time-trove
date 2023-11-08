import 'dart:io';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_trove_app/app/home/done_page.dart';
import 'package:time_trove_app/app/home/in_progress_page.dart';
import 'package:time_trove_app/app/home/logout_page.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/common/constants/time_trove_assets.dart';

class MainManuPage extends StatefulWidget {
  const MainManuPage({super.key});
  static const String routeName = '/home';

  @override
  State<MainManuPage> createState() => _MainManuPageState();
}

class _MainManuPageState extends State<MainManuPage> {
  final _androidAppRetain = const MethodChannel("android_app_retain");
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const InProgressPage(),
    const DonePage(),
    const LogOut(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backHandler,
      child: Scaffold(
        body: SafeArea(child: _pages[_selectedIndex]),
        appBar: (_selectedIndex == 0 || _selectedIndex == 1)
            ? AppBar(
                title: Text(
                  AppLocalizations.of(context)?.tasks ?? '',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            : AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)?.in_progress ?? '',
                icon: _provideTabBarIcon(
                  TTAssets.tabBarFist,
                  _selectedIndex == 0,
                )),
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)?.done ?? '',
                icon: _provideTabBarIcon(
                    TTAssets.tabBarSecond, _selectedIndex == 1)),
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)?.logout ?? '',
                icon: _provideTabBarIcon(
                    TTAssets.tabBarThird, _selectedIndex == 2)),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget _provideTabBarIcon(String iconPath, bool isSelected) {
    final color = isSelected ? Colors.grey.shade600 : TTColors.primaryColor;
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SvgPicture.asset(
        iconPath,
        fit: BoxFit.scaleDown,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        width: 20,
        height: 18,
      ),
    );
  }

  Future<bool> backHandler() {
    if (Platform.isAndroid) {
      if (_selectedIndex == 0) {
        _androidAppRetain.invokeMethod("sendToBackground");
      } else {
        _selectedIndex -= 1;
        setState(() {});
      }
    }
    return Future.value(false);
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
