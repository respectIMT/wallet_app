import 'main_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/home/home_page.dart';
import 'package:wallet_app/presentation/pages/outlay/outlay_page.dart';
import 'package:wallet_app/presentation/pages/profit/profit_page.dart';
import 'package:wallet_app/presentation/pages/setting/setting_page.dart';

class MainCubit extends Cubit<MainState> {
  int currentPage = 0;
  MainCubit() : super(MainInitial());

  List<Widget> pages = [
    const HomePage(),
    const OutlayPage(),
    const ProfitPage(),
    const SettingPage(),
  ];

  void ontap(
    int index,
  ) {
    currentPage = index;
    emit(MainInitial());
  }
}
