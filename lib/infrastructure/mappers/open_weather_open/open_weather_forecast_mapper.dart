import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/infrastructure/models/openweathermap/openweathermap_response.dart';

class OpenWeatherForecastMapper {
  static WeatherForecastEntity localDBToEntity(
          OpenWeatherMapResponse weather) =>
      WeatherForecastEntity(
        tempCelsius: weather.current.temp.toInt(),
        uvIndex: weather.current.uvi,
        chanceRain: weather.current.pop ?? weather.daily.first.pop,
      );
}
