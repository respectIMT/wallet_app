import 'package:dotted_border/dotted_border.dart';
import 'package:gap/gap.dart';

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
                body: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenSize.h10, horizontal: ScreenSize.w15),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenSize.h8,
                            horizontal: ScreenSize.w20),
                        decoration: BoxDecoration(
                            color: AppTheme.colors.grey,
                            borderRadius:
                                BorderRadius.circular(ScreenSize.r10)),
                        child: Text(
                          "10 - fevral, 2024-yil",
                          textAlign: TextAlign.center,
                          style: AppTheme.data.textTheme.labelLarge,
                        ),
                      ),
                      Gap(ScreenSize.h10),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: ScreenSize.w35),
                          child: const TabBarMenu()),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenSize.h10,
                            horizontal: ScreenSize.w10),
                        child: DottedBorder(
                          padding:
                              EdgeInsets.symmetric(vertical: ScreenSize.h20),
                          color: AppTheme.colors.grey,
                          borderType: BorderType.RRect,
                          dashPattern: const [8, 8],
                          strokeWidth: ScreenSize.h1,
                          radius: Radius.circular(ScreenSize.r15),
                          child: Column(children: [
                            PieChartX(dataMapChart: cubit.dataMapChart),
                            Gap(ScreenSize.h25),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: ScreenSize.h10,
                                        width: ScreenSize.w10,
                                        decoration: BoxDecoration(
                                          color: AppTheme.colors.green,
                                          borderRadius: BorderRadius.circular(
                                              ScreenSize.r2),
                                        ),
                                      ),
                                      Gap(ScreenSize.w5),
                                      const Text("Daromadlar")
                                    ],
                                  ),
                                  Row(children: [
                                    Container(
                                      height: ScreenSize.h10,
                                      width: ScreenSize.w10,
                                      decoration: BoxDecoration(
                                        color: AppTheme.colors.red,
                                        borderRadius: BorderRadius.circular(
                                            ScreenSize.r2),
                                      ),
                                    ),
                                    Gap(ScreenSize.w5),
                                    const Text("Xarajatlar"),
                                  ]),
                                ]),
                          ]),
                        ),
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
