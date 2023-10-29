import 'package:tennis_fields_app/domain/datasources/weather/weathers_datasource.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/domain/repositories/weather/weather_repository.dart';

class WeatherRepositoryImpl extends WeathersRepository {
  final WeathersDatasource weathersDatasource;

  WeatherRepositoryImpl({
    required this.weathersDatasource,
  });

  @override
  Future<WeatherForecastEntity> getWeatherCurrent() {
    return weathersDatasource.getWeatherCurrent();
  }
}
