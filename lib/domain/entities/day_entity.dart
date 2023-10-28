import 'package:tennis_fields_app/domain/entities/entities.dart';

class DayEntity {
  final String date;
  final WeatherForecastEntity forecast;
  

  DayEntity({
    required this.date,
    required this.forecast,
    
  });
}
