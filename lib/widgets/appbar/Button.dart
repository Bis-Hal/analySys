import 'package:flutter/material.dart';



class Button extends StatelessWidget {
  final String _label;
  Button(this._label);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.0,
      height: 75.0,
      child: GestureDetector(
        onTap: ()=>{
        },
        child: Card(
          color: Colors.teal,
          child: Center(child: Text(_label,textAlign: TextAlign.right, style: TextStyle( color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16.0),)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
