import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:wallet_app/application/app_manager/app_manager_provider.dart';
import 'package:wallet_app/presentation/assets/theme/app_theme.dart';
import 'package:wallet_app/presentation/routes/coordinator.dart';

class AppManager extends StatelessWidget {
  const AppManager({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppManagerProvider(),
      child: Consumer<AppManagerProvider>(
        builder: (context, provider, child) {
          return RequestsInspector(
            showInspectorOn: ShowInspectorOn.LongPress,
            child: MaterialApp.router(
              title: 'WalletApp',
              theme: AppTheme.data,
              themeMode: AppTheme.themeMode,
              debugShowCheckedModeBanner: false,
              routeInformationParser: router.routeInformationParser,
              routeInformationProvider: router.routeInformationProvider,
              routerDelegate: router.routerDelegate,
              builder: EasyLoading.init(),
            ),
          );
        },
      ),
    );
  }
}
