import 'package:weather_app/model/weather_data_daily.dart';
import 'package:weather_app/model/weather_data_hourly.dart';

import 'weather_data_current.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  final WeatherDataHourly? hourly;
  final WeatherDataDaily? daily;

  WeatherData([this.current, this.hourly, this.daily]);

  WeatherDataCurrent getCurrentWeather() {
    return current!;
  }

  WeatherDataHourly getHourlyWeather() {
    return hourly!;
  }

  WeatherDataDaily getDailyWeather() {
    return daily!;
  }
}
