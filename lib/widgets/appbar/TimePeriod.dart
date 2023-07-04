import 'package:flutter/material.dart';

import 'Button.dart';

class TimePeriod extends StatefulWidget {
  const TimePeriod({Key? key}) : super(key: key);

  @override
  State<TimePeriod> createState() => _TimePeriodState();
}

class _TimePeriodState extends State<TimePeriod> {
  final buttons = ["1y", "6m", "3m", "1m"];
  String _activeButton = "1y";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 110, left: 37.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...buttons.map(
            (label) => Button(label, _activeButton, () {
              setState(() {
                _activeButton = label;
              });
            }),
          )
        ],
      ),
    );
  }
}
