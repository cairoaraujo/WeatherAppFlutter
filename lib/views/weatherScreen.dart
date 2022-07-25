import 'package:cairo_challenge/models/weather.dart';
import 'package:cairo_challenge/services/weatherService.dart';
import 'package:flutter/material.dart';
import '../components/WeatherList.dart';
import '../styles/style.dart';

class WeatherScreen extends StatelessWidget {
  final service = WeatherService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 27, 85),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StylizedText('Sydney, Australia', 30),
            FutureBuilder<List<Weather>>(
              future: WeatherService.fetchWeather(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  return WeatherList(weather:snapshot.data!);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}