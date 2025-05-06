import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/profit/profit_cubit.dart';
import 'package:wallet_app/application/profit/profit_state.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';

class ProfitPage extends StatelessWidget {
  const ProfitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfitCubit(),
      child: BlocListener<ProfitCubit, ProfitState>(
        listener: (context, state) {},
        child: Builder(
          builder: (context) => BlocBuilder<ProfitCubit, ProfitState>(
            builder: (context, state) => Builder(
              builder: (context) {
                // final cubit = context.read<ProfitCubit>();
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: AppTheme.colors.white,
                  ),
                  body: const Center(
                    child: Text("Profit"),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
