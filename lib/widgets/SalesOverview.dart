import 'package:flutter/material.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class SalesOverview extends StatelessWidget {
  final List<double> _plots;
  final String _title;
  final int _revenue;
  final double _changeRate;
  final IconData _indicator;


  const SalesOverview(this._plots, this._title, this._revenue, this._changeRate,
      this._indicator, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Sparkline(
        lineWidth: 1.0,
        lineColor: Colors.teal,
        useCubicSmoothing: true,
        cubicSmoothingFactor: 0.2,
        fillMode: FillMode.below,
        fillGradient: const LinearGradient(
          colors: [
            Colors.teal,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        data: _plots,
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(_title),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rs. $_revenue",
                  style: TextStyle(fontSize: 24.0),
                ),
                Row(
                  children: [
                    Text("$_changeRate"),
                    Icon(_indicator),
                  ],
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}
