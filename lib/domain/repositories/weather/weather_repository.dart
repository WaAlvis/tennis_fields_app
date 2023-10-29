import 'package:tennis_fields_app/domain/entities/entities.dart';

abstract class WeathersRepository {
  Future<WeatherForecastEntity> getWeatherCurrent();
}
