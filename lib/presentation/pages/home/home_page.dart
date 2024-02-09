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
                  title: Text(
                    "10 - fevral, 2024-yil",
                    textAlign: TextAlign.center,
                    style: AppTheme.data.textTheme.titleMedium!
                        .copyWith(color: AppTheme.colors.primary),
                  ),
                  backgroundColor: AppTheme.colors.white,
                  centerTitle: true,
                ),
                body: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenSize.h10, horizontal: ScreenSize.w15),
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenSize.w35),
                            child: const TabBarMenu()),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenSize.h10,
                              horizontal: ScreenSize.w10),
                          child: DottedBorder(
                            padding:
                                EdgeInsets.symmetric(vertical: ScreenSize.h10),
                            color: AppTheme.colors.grey,
                            borderType: BorderType.RRect,
                            dashPattern: const [8, 8],
                            strokeWidth: ScreenSize.h1,
                            radius: Radius.circular(ScreenSize.r15),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: ScreenSize.h5,
                                          horizontal: ScreenSize.w10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Umumiy daromadlar:",
                                            style: AppTheme
                                                .data.textTheme.bodyMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: ScreenSize.sp13),
                                          ),
                                          Text(
                                            "+ 7 500 000 so'm",
                                            style: AppTheme
                                                .data.textTheme.bodyMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        AppTheme.colors.green,
                                                    fontSize: ScreenSize.sp13),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: ScreenSize.w10),
                                      height: 1,
                                      color: AppTheme.colors.grey100,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: ScreenSize.h5,
                                          horizontal: ScreenSize.w10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Umumiy xarajatlar:",
                                            style: AppTheme
                                                .data.textTheme.bodyMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: ScreenSize.sp13),
                                          ),
                                          Text(
                                            "- 4 340 000 so'm",
                                            style: AppTheme
                                                .data.textTheme.bodyMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: AppTheme.colors.red,
                                                    fontSize: ScreenSize.sp13),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: ScreenSize.h25),
                                  child: PieChartX(
                                    dataMapChart: cubit.dataMapChart,
                                  ),
                                ),
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: ScreenSize.h10,
                              horizontal: ScreenSize.w10),
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenSize.h10,
                              horizontal: ScreenSize.w10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: ScreenSize.w1,
                              ),
                              borderRadius:
                                  BorderRadius.circular(ScreenSize.r10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Joriy balans :",
                                textAlign: TextAlign.center,
                                style: AppTheme.data.textTheme.labelLarge,
                              ),
                              Text(
                                "3 160 000 so'm",
                                textAlign: TextAlign.center,
                                style: AppTheme.data.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   child: SfCartesianChart(
                        //     primaryXAxis: NumericAxis(isInversed: true),
                        //     primaryYAxis: NumericAxis(isInversed: true),
                        //     series: <CartesianSeries<ChartData, int>>[
                        //       LineSeries<ChartData, int>(
                        //           dataSource: cubit.chartData,
                        //           markerSettings:
                        //               MarkerSettings(isVisible: true),
                        //           xValueMapper: (ChartData data, _) => data.x,
                        //           yValueMapper: (ChartData data, _) => data.y),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
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

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
