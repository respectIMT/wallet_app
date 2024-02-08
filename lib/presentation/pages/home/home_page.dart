import 'components/tabbar_menu.dart';
import 'components/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/home/home_cubit.dart';
import 'package:wallet_app/application/home/home_state.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';
import 'package:wallet_app/presentation/assets/res/screen_size.dart';

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
              final cubit = context.read<HomePageCubit>();
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: AppTheme.colors.white,
                ),
                body: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenSize.h10, horizontal: ScreenSize.w50),
                    child: Column(children: [
                      const TabBarMenu(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenSize.h30,
                            horizontal: ScreenSize.w10),
                        child: PieChartX(dataMapChart: cubit.dataMapChart),
                      ),
                    ]),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
