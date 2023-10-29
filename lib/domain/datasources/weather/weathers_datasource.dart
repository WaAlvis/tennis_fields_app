import 'package:tennis_fields_app/domain/entities/entities.dart';

abstract class WeathersDatasource {
  Future<WeatherForecastEntity> getWeatherCurrent();
}
