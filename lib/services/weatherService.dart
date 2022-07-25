import 'dart:convert';
import 'dart:developer';
import '../models/weather.dart';
import 'package:http/http.dart' as http;

const API_KEY = "2a00c14770c83a74d6cc79aa6d61f31c";
const UNIT = "metric";
const URL = "http://api.openweathermap.org/data/2.5/forecast?q=sydney&appid=$API_KEY&units=$UNIT";


class WeatherService{
  static Future<List<Weather>> fetchWeather() async {
    final response = await http.get(Uri.parse(URL));
    if (response.statusCode == 200) {
      final lista = jsonDecode(response.body)['list'].cast<Map<String, dynamic>>();
      return lista.map<Weather>((item) => Weather.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load weather');
    }
  }
}