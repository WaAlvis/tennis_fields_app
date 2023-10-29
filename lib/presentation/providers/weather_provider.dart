import 'package:flutter/material.dart';
import 'package:tennis_fields_app/domain/repositories/weather/weather_repository.dart';

class WeatherProvider extends ChangeNotifier {
  bool intialLoading = true;

  final WeathersRepository weathersRepository;

  WeatherProvider({required this.weathersRepository}) {
    getCurrentWeather();
  }

  getCurrentWeather() async {
    await weathersRepository.getWeatherCurrent();

    intialLoading = false;

    notifyListeners();
  }
}
