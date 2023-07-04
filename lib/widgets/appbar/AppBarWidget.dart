import 'package:analysis/widgets/appbar/TimePeriod.dart';
import 'package:analysis/widgets/styles/heading_one.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  final String _title;

  const AppBarWidget(this._title, {Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState(_title);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final String _title;
  String? currentYear;
  final int _label = DateTime.now().year;
  final _years = ["2021", "2020", "2022", "2019"];


  _AppBarWidgetState(this._title);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        AppBar(
        toolbarHeight: 106.0,
        backgroundColor: Colors.teal[300],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 42.0, bottom: 20.0),
              child: HeadingOne(_title),
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              margin: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: DropdownButton(
                dropdownColor: Colors.teal,
                hint: Text('$_label',style: TextStyle(color: Colors.white, fontFamily: 'RobotoSlab', fontSize: 12.0),),

                alignment: Alignment.center,
                icon: const Center(child: Icon(Icons.arrow_drop_down , color: Colors.white,)),
                value: currentYear,
                onChanged: (String? value) {
                  setState(() {
                    currentYear = value!;
                  });
                },
                items: _years.map((year) {
                  return DropdownMenuItem(
                    value: year,
                    child: Text(year,style: TextStyle(color: Colors.white, fontFamily: 'RobotoSlab', fontSize: 12.0),),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        ),
    const TimePeriod(),
    ]);
  }
}
