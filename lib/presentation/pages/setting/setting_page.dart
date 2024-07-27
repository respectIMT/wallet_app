import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';
import 'package:wallet_app/application/settings/settings_cubit.dart';
import 'package:wallet_app/application/settings/settings_state.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocListener<SettingsCubit, SettingsState>(
        listener: (context, state) {},
        child: Builder(
          builder: (context) => BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) => Builder(builder: (context) {
              // final cubit = context.read<SettingsCubit>();
              return Scaffold(
                appBar: AppBar(backgroundColor: AppTheme.colors.white),
                body: const Center(
                  child: Text("Setting"),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
