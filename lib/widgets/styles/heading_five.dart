import 'package:flutter/material.dart';

class HeadingFive extends StatelessWidget {
  final String _heading;

  const HeadingFive(this._heading, {super.key});

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
