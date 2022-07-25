import 'package:cairo_challenge/models/weather.dart';
import 'package:cairo_challenge/views/weatherDetailsScreen.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../main.dart';
import '../styles/style.dart';
import 'WeatherImg.dart';

class WeatherCard extends StatelessWidget {
    const WeatherCard({Key? key, required this.card}) : super(key: key);
    final Weather card;

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(card.dt) as DateTime;

    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => WeatherDetailsScreen(weather: card))),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            StylizedText(formatDate(date, [dd, ' ', MM]),20),
            StylizedText(formatDate(DateTime.parse(card.dt.toString()), [HH, ':',nn ]),40),
            Spacer(),
            WeatherImage(card.main, 80),
            Spacer(),
            StylizedText("${card.temp.toStringAsFixed(1)}°C", 35),
            StylizedText(card.description, 20),
            Spacer()
          ],
        )
      ),
    );
  }
}
