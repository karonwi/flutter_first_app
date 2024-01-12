import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling(this.text, {super.key});
  //using final here because we don not plan on changing the implementation in this class
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style:const TextStyle(
          fontStyle: FontStyle.italic, color: Colors.white, fontSize: 28),
    );
  }
}
