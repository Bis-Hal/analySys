import 'package:flutter/material.dart';

class HeadingOne extends StatelessWidget {
  final String _heading;

  const HeadingOne(this._heading, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _heading,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32.0,
      ),
      textAlign: TextAlign.start,
    );
  }
}
