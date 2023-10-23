// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/assets/res/screen_size.dart';
import 'package:wallet_app/presentation/assets/theme/app_theme.dart';

class AppManagerProvider extends ChangeNotifier {
  AppManagerProvider() {
    init();
  }

  Future<void> init() async {
    try {
      await AppTheme.init();
      await ScreenSize.setSizes();

      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
