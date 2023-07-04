import 'package:analysis/dto/sales.dart';
import 'package:fl_chart/fl_chart.dart';


final salesPlot = SalesDTO("Sales Overview",
    {1: 5000.0, 2: 10000.0, 3: 11000, 4: 150000.0, 5: 16000.0, 6: 17000.0});
final aPlot = SalesDTO("b plot",
    {1: 5000.0, 2: 60000.0, 3: 17000, 4: 650000.0, 5: 17000.0, 6: 1000.0});
final bPlot = SalesDTO("a plot",
    {1: 5000.0, 2: 10000.0, 3: 11000, 4: 150000.0, 5: 16000.0, 6: 17000.0});

final dtos = [salesPlot, aPlot, bPlot];

List<BarChartGroupData>? getMappingSaleDtoToBarChart(SalesDTO salesDTO) {
  List<BarChartGroupData>? barChartGroupData = [];

  salesDTO.yearsPlot.forEach((month, salesPerMonth) {
    barChartGroupData.add(BarChartGroupData(
        x: month, barRods: [BarChartRodData(toY: salesPerMonth)]));
  });
  return barChartGroupData;
}


final years = [2019, 2020, 2021, 2022, 2023];
