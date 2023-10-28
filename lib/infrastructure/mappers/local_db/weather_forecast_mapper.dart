import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';

class WeatherForecastMapper {
  static WeatherForecastEntity localDBToEntity(BookingLocalDB booking) =>
      WeatherForecastEntity(
        tempCelsius: booking.day.forecast.tempCelsius,
        uvIndex: booking.day.forecast.uvIndex,
        chanceRain: booking.day.forecast.chanceRain.toDouble(),
      );
}
