import 'package:cairo_challenge/components/WeatherImg.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../main.dart';
import '../models/weather.dart';
import '../styles/style.dart';

class WeatherDetailsScreen extends StatelessWidget {
  Weather weather;
  WeatherDetailsScreen({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(weather.dt) as DateTime;
    return Scaffold(
      backgroundColor: Color.fromARGB(255,45, 118, 190),
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            StylizedText('Sydney, Australia', 20),
            StylizedText(formatDate(date, [dd, ' ', MM]),20),
            Spacer(),
            StylizedText(formatDate(DateTime.parse(weather.dt.toString()), [HH, ':',nn ]),35),
            Spacer(),
            WeatherImage(weather.main, 150),
            StylizedText("${weather.temp.toStringAsFixed(1)}°C", 50,),
            StylizedText(weather.description, 20),
            SizedBox(height: 50),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(138, 44, 65, 250),
                boxShadow: [
                  BoxShadow(color: Color.fromARGB(255, 0, 0, 0), spreadRadius: 0),
                ],
              ),
              
              child: Row(
                children: [
                  Spacer(),
                  Column(children: [
                    StylizedText('Temp min: ${weather.tempMin}°C',13),
                    StylizedText('Humidity: ${weather.humidity}%', 13)
                  ],),
                  Spacer(),
                  Column(children: [
                    StylizedText('Temp max: ${weather.tempMax}°C',13),
                    StylizedText('Clouds: ${weather.clouds}%',13)
                  ],),
                  Spacer()
                ],
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}