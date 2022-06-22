import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Widget child;
  final GestureTapCallback onPressed;
  final Color col;
  //final String butName;

  MyButton({required this.onPressed, required this.child,required this.col});

  @override
  _MyButtonState createState() => _MyButtonState();
}
class _MyButtonState extends State<MyButton> {
  get onPressed => onPressed;
  get col => onPressed;
  //get butName => butName;

  @override
  void initState() {
    _color = Colors.green;
    super.initState();
  }

  late Color _color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 62,
      child: RaisedButton(
        child:widget.child,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white60, width: 2),
        ),
        color: col,
        onPressed: onPressed,
    )
    );
  }
}