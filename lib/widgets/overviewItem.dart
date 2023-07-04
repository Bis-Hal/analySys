import 'package:analysis/dto/sales.dart';
import 'package:analysis/mock/bar_data_mock.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class OverviewItem extends StatefulWidget {
  final SalesDTO _dto;

  const OverviewItem(this._dto, {super.key});

  @override
  State<OverviewItem> createState() => _OverviewItemState();
}

class _OverviewItemState extends State<OverviewItem> {

  @override
  Widget build(BuildContext context) {
    print(widget._dto.title);
    return  Container(
      padding: const EdgeInsets.all(25.0),
      width: MediaQuery.of(context).size.width,
      child: BarChart(
        BarChartData(
          titlesData: const FlTitlesData(
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          barGroups: getMappingSaleDtoToBarChart(widget._dto)
        )
      ),
    );
  }
}
