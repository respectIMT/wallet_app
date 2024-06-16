import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:wallet_app/presentation/assets/res/app_color.dart';
import 'package:wallet_app/presentation/assets/res/screen_size.dart';
import 'package:wallet_app/presentation/assets/theme/app_theme.dart';

class PieChartX extends StatelessWidget {
  const PieChartX({
    super.key,
    required this.dataMapChart,
  });
  final Map<String, double> dataMapChart;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      animationDuration: const Duration(milliseconds: 1000),
      chartRadius: MediaQuery.of(context).size.width / 2.5,
      colorList: AppColors.colorsList,
      chartType: ChartType.ring,
      ringStrokeWidth: ScreenSize.w30,
      centerText: "May-2024",
      centerTextStyle: AppTheme.data.textTheme.bodyMedium,
      initialAngleInDegree: 90,
      legendOptions: const LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: false,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: true,
        showChartValuesOutside: true,
        decimalPlaces: 0,
      ),
      dataMap: dataMapChart,
    );
  }
}
