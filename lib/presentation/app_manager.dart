import 'companents/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../application/app/app_manager_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:wallet_app/presentation/routes/coordinator.dart';
import 'package:wallet_app/presentation/assets/theme/app_theme.dart';

class AppManager extends StatelessWidget {
  const AppManager({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, state) {
      if (state is AppManagerLoading) {
        return const CircularProgressIndicator();
      } else if (state is AppManagerError) {
        return ErrorView(error: state.error);
      } else {
        return RequestsInspector(
          showInspectorOn: ShowInspectorOn.LongPress,
          child: MaterialApp.router(
            title: 'WALLET APP',
            theme: AppTheme.data,
            themeMode: AppTheme.themeMode,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            routerDelegate: router.routerDelegate,
            builder: EasyLoading.init(),
          ),
        );
      }
    });
  }
}
