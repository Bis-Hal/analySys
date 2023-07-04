import 'package:analysis/mock/bar_data_mock.dart';
import 'package:analysis/widgets/SalesOverview.dart';
import 'package:analysis/widgets/overviewItem.dart';
import 'package:flutter/material.dart';

class AnalyticsItem extends StatefulWidget {
  const AnalyticsItem({Key? key}) : super(key: key);

  @override
  State<AnalyticsItem> createState() => _AnalyticsItemState();
}

class _AnalyticsItemState extends State<AnalyticsItem> {

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(itemBuilder: (BuildContext context, int index)=>OverviewItem(dtos[index]), itemCount: dtos.length, scrollDirection: Axis.horizontal,));
  }
}
