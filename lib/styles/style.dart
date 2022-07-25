import 'package:flutter/material.dart';

class StylizedText extends StatelessWidget {
  StylizedText(this.content,this.textSize);

  late String content;
  late double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(content, style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w400, color: Colors.white));
  }
}