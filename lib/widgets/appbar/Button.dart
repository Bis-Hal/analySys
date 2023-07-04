import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String _label;
  final String _groupValue;
  final Function()? onChanged;


  const Button(this._label, this._groupValue, this.onChanged, {super.key});

  @override
  State<Button> createState() => _ButtonState(onChanged);
}

class _ButtonState extends State<Button> {

  Color activeColor = Colors.teal;
  double elevation = 8.0;
  void Function()? onChanged;

  _ButtonState(this.onChanged);

  @override
  Widget build(BuildContext context) {
    setState(() {
      activeColor = (widget._label == widget._groupValue ? Colors.teal[300] : Colors.teal)!;
      elevation = (widget._label == widget._groupValue ? 0.0 : 8.0);
    });
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            )),
            minimumSize: MaterialStateProperty.all(Size(47, 56.0)),
            backgroundColor: MaterialStateProperty.all(activeColor),
            elevation: MaterialStateProperty.all(elevation),
            textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700))
          ),
          onPressed: onChanged,
            child: Center(child: Text(widget._label,)),
        ),
      ),
    );
  }
}