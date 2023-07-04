import 'package:flutter/material.dart';

class HeadingTwo extends StatelessWidget {
  final String _heading;

  const HeadingTwo(this._heading, {Key? key}) : super(key: key);

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
