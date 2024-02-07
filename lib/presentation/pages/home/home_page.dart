import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/home/home_cubit.dart';
import 'package:wallet_app/application/home/home_state.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: BlocListener<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        child: Builder(
          builder: (context) => BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) => Builder(builder: (context) {
              // final cubit = context.read<HomePageCubit>();
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: AppTheme.colors.white,
                ),
                body: const Center(child: Text("Asosiy oyna")),
              );
            }),
          ),
        ),
      ),
    );
  }
}
