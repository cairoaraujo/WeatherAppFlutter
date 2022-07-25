import 'package:cairo_challenge/components/WeatherCard.dart';
import 'package:cairo_challenge/components/WeatherImg.dart';
import 'package:cairo_challenge/services/weatherService.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/weather.dart';

class WeatherList extends StatelessWidget {
  WeatherList({required this.weather});

  final List<Weather> weather;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        CarouselSlider(
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            height: 400,
            enlargeCenterPage: true,
            aspectRatio: 0.8,
            viewportFraction: 0.6,
            enableInfiniteScroll: false,
            autoPlay: false
          ),
          items: weather.map<Widget>((item) => Container(
            color: Color.fromARGB(255,45, 118, 190),
            child: WeatherCard(card: item))).toList(),
        ),
      ],
    );
  }
}
