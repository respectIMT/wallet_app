import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/application/splash/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(context),
      child: Consumer<SplashProvider>(
        builder: (_, provider, child) => const Scaffold(
          body: SafeArea(
            child: Column(),
          ),
        ),
      ),
    );
  }
}
