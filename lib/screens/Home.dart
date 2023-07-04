import 'package:analysis/widgets/sales_analytics.dart';
import 'package:analysis/widgets/SalesOverview.dart';
import 'package:analysis/widgets/appbar/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarWidget("Sales Overview"),
          AnalyticsItem(),
          SalesOverview([2.0,2.9,3.0,3.3,2.1,3.2,4.5,1.3,4.3,5.4,2.5],"Sales",78000,50,Icons.arrow_upward_sharp),
        ],
      ),
      bottomNavigationBar:GNav(
        tabMargin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
        selectedIndex: _currentIndex,
        gap: 5.0,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        iconSize: 24.0,
        tabActiveBorder: Border.all(color: const Color.fromRGBO(0, 0, 0, 100.0),width: 1.0, style: BorderStyle.solid),
        activeColor: Colors.black,
        color: Colors.black,
        onTabChange: (index)=>{
          setState((){
            _currentIndex = index;
          }),
        },
        tabs: const [
          GButton(icon: Icons.all_inclusive_rounded, text: "Overview", padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),),
          GButton(icon: Icons.production_quantity_limits, text: "Sales Analysis", padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),),
          GButton(icon: Icons.auto_graph, text: "Forecast", padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),),
          GButton(icon: Icons.home_rounded, text: "Home", padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),)
          ,
        ]
        ,
      ),
    );
  }
}
