import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherImage extends StatelessWidget {

  const WeatherImage(this.main,this.imgWidth, {Key? key}) : super(key: key);
  final String main;
  final double imgWidth;
  @override
  Widget build(BuildContext context) {
    switch (main){
      case 'Clear': return Image.network("https://cdn-icons-png.flaticon.com/512/869/869869.png", width: imgWidth,);
      case 'Clouds': return Image.network("https://cdn-icons-png.flaticon.com/512/1146/1146869.png", width: imgWidth,);
      case 'Rain': return Image.network("https://cdn-icons-png.flaticon.com/512/826/826957.png", width: imgWidth);
    }
    return Image.network("https://cdn-icons-png.flaticon.com/512/869/869869.png", width: imgWidth,);
  }
}