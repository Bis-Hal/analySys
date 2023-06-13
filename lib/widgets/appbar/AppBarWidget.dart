import 'package:analysis/widgets/appbar/TimePeriod.dart';
import 'package:analysis/widgets/styles/heading_one.dart';
import 'package:flutter/material.dart';

import 'Button.dart';

class AppBarWidget extends StatefulWidget {
  final String _title;
  final String _stats;

  AppBarWidget(this._title, this._stats, {Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState(_title,_stats);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final String _title;
  final String _stats;

  _AppBarWidgetState(this._title, this._stats);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 200.0,
        child: AppBar(
          backgroundColor: Colors.teal[300],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
          ),
          title:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeadingOne(_title),
              HeadingOne(_stats),
            ],
          ),
          actions: [
            IconButton(onPressed: ()=>{}, icon: const Icon(Icons.logout))
          ],
        ),
      ),
      const TimePeriod(),
    ]);
  }
}
