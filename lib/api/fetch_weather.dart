import 'dart:convert';

import 'package:weather_app/model/weather_data_current.dart';
import 'package:weather_app/model/weather_data_daily.dart';
import 'package:weather_app/model/weather_data_hourly.dart';

import '../model/weather_data.dart';
import 'package:http/http.dart' as http;
import '../utils/api_url.dart';
import 'api_key.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  Future<WeatherData> processData(var lat, var lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
        WeatherDataCurrent.fromJson(jsonString),
        WeatherDataHourly.fromJson(jsonString),
        WeatherDataDaily.fromJson(jsonString));
    return weatherData!;
  }
}
