import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import 'chart_item.dart';

class ChartData extends StatelessWidget {
  ChartData({super.key});

  @override
  Widget build(BuildContext context) {
    final double totalSum =
        chartData.fold(0, (sum, item) => sum + item['value']);
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 140.w,
              child: SfCircularChart(
                legend: Legend(
                  isVisible: false,
                  overflowMode: LegendItemOverflowMode.scroll,
                  position: LegendPosition.bottom,
                  textStyle: GoogleFonts.poppins(),
                ),
                series: <CircularSeries>[
                  DoughnutSeries<Map<String, dynamic>, String>(
                    dataSource: chartData,
                    explode: true,
                    legendIconType: LegendIconType.diamond,
                    xValueMapper: (data, _) => data['category'],
                    yValueMapper: (data, _) => data['value'],
                    dataLabelMapper: (data, _) =>
                        '${((data['value'] / totalSum) * 100).toStringAsFixed(2)}%',
                    dataLabelSettings: DataLabelSettings(
                      isVisible: false,
                      alignment: ChartAlignment.center,
                      textStyle: GoogleFonts.poppins(),
                      labelPosition: ChartDataLabelPosition.outside,
                      labelIntersectAction: LabelIntersectAction.shift,
                    ),
                    enableTooltip: true,
                    radius: '80%',
                    pointColorMapper: (data, index) {
                      return colorList[index % colorList.length];
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChartItemTile(
                  title: 'Home',
                  color: CustomColors.blue4,
                ),
                Kconstants.kHeight,
                ChartItemTile(
                  title: 'Food & Drink',
                  color: CustomColors.yellow,
                ),
                Kconstants.kHeight,
                ChartItemTile(
                  title: 'Hotel & Restaurant',
                  color: CustomColors.greenAccent,
                ),
                Kconstants.kHeight,
                ChartItemTile(
                  title: 'Travelling',
                  color: CustomColors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> chartData = [
    {'category': 'Category 1', 'value': 33},
    {'category': 'Category 2', 'value': 33},
    {'category': 'Category 3', 'value': 25},
    {'category': 'Category 4', 'value': 25},
  ];

  final colorList = <Color>[
    CustomColors.greenAccent,
    CustomColors.yellow,
    CustomColors.blue4,
    CustomColors.red,
  ];
}
