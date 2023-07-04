import 'package:flutter/material.dart';

class HeadingThree extends StatelessWidget {
  final String _heading;

  const HeadingThree(this._heading, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _heading,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontFamily: 'RobotoSlab'
      ),
      textAlign: TextAlign.start,
    );
  }
}
