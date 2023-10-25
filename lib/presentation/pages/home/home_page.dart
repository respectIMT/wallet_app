import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/application/home_provider/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Consumer<HomeProvider>(
        builder: (_, provider, child) => SafeArea(
          child: Scaffold(body: Container()),
        ),
      ),
    );
  }
}
