import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/home/home_page.dart';
import 'package:wallet_app/presentation/pages/outlay/outlay_page.dart';
import 'package:wallet_app/presentation/pages/profit/profit_page.dart';
import 'package:wallet_app/presentation/pages/setting/setting_page.dart';

class ScreenProvider extends ChangeNotifier {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfitPage(),
    OutlayPage(),
    SettingPage(),
  ];
  void ontap(int index) {
    currentPage = index;
    notifyListeners();
  }
}
