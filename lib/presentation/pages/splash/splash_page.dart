import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/splash/splash_cubit.dart';
import 'package:wallet_app/application/splash/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashPageCubit(context),
      child: BlocListener<SplashPageCubit, SplashPageState>(
        listener: (context, state) {},
        child: Builder(
          builder: (context) => BlocBuilder<SplashPageCubit, SplashPageState>(
            builder: (context, state) => Builder(builder: (_) {
              // final cubit = context.read<SplashPageCubit>();
              return const Scaffold();
            }),
          ),
        ),
      ),
    );
  }
}
