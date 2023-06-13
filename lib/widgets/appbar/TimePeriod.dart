import 'package:flutter/material.dart';

import 'Button.dart';

class TimePeriod extends StatelessWidget {
  const TimePeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 155,left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button("1y"),
          Button("6m"),
          Button("3m"),
          Button("30d"),
        ],
      ),
    );
  }
}
