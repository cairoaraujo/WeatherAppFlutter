class Weather{
  final String dt;
  final String icon;
  final String main;
  final String description;
  final double temp;
  final double tempMin;
  final double tempMax;
  final int humidity;
  final int clouds;

  Weather({required this.dt,required this.icon,required this.main,required this.description,required this.temp, required this.tempMin, required this.tempMax, required this.humidity, required this.clouds});


  factory Weather.fromJson(Map<String, dynamic> json) {
    final dt = json['dt_txt'] as String;
    final icon = json['weather'][0]['icon'] as String;
    final main = json['weather'][0]['main'] as String;
    final description = json['weather'][0]['description'] as String;
    final temp = json['main']['temp'] as double;
    final tempMin = json['main']['temp_min'] as double;
    final tempMax = json['main']['temp_max'] as double;
    final humidity = json['main']['humidity'] as int;
    final clouds = json['clouds']['all'] as int;
    return Weather(dt: dt, icon: icon, main: main, description: description, temp: temp, tempMin: tempMin, tempMax: tempMax, humidity: humidity, clouds: clouds);
  }
}