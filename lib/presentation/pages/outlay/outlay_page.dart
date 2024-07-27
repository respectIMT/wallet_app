import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/outlay/outlay_cubit.dart';
import 'package:wallet_app/application/outlay/outlay_state.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';

class OutlayPage extends StatelessWidget {
  const OutlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OutlayCubit(),
      child: BlocListener<OutlayCubit, OutlayState>(
        listener: (context, state) {},
        child: Builder(
          builder: (context) => BlocBuilder<OutlayCubit, OutlayState>(
            builder: (context, state) => Builder(builder: (context) {
              // final cubit = context.read<OutlayCubit>();
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: AppTheme.colors.white,
                ),
                body: const Center(
                  child: Text("Outlay"),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
