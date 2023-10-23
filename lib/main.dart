// ignore_for_file: unnecessary_import

import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/presentation/pages/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox("local_storage");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: ScreenUtilInit(
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainScreen(),
          ),
        ),
      ),
    );
  }
}
