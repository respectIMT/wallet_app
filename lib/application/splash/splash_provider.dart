// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:wallet_app/infrastructure/local/hive_database.dart';
import 'package:wallet_app/presentation/routes/index_routes.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider(context) {
    initToken(context);
  }

  void initToken(BuildContext context) async {
    String token = await HiveService().getInfoLocal('token');
    if (token.isEmpty) {
      context.go(Routes.homePage.path);
    } else {
      context.go(Routes.homePage.path);
    }
  }
}
