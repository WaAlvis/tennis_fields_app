import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/infrastructure/mappers/local_db/mappers_local_db.dart';
import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';

class DayMapper {
  static DayEntity localDBToEntity(BookingLocalDB booking) => DayEntity(
        date: booking.day.date.toString(),
        forecast: WeatherForecastMapper.localDBToEntity(booking),
      );
}
