// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/application/splash/splash_state.dart';
import 'package:wallet_app/infrastructure/local/hive_database.dart';
import 'package:wallet_app/presentation/routes/index_routes.dart';

class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit(BuildContext context) : super(SplashPageInitial()) {
    initToken(context);
  }

  bool isCheck = true;

  Future<void> initToken(BuildContext context) async {
    String token = await HiveService().getInfoLocal('token');

    if (token.isEmpty) {
      context.go(Routes.homePage.path);
    } else {
      context.go(Routes.homePage.path);
    }
  }
}
