import 'package:analysis/widgets/appbar/AppBarWidget.dart';
import 'package:analysis/widgets/list_item.dart';
import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget("Shirt"),
          Expanded(child: ListView.builder(itemBuilder: (context,index)=>ListItem(), itemCount: 100,))
        ],
      ),
    );
  }
}
