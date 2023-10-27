import 'package:tennis_fields_app/domain/entities/field.dart';
import 'package:tennis_fields_app/infrastructure/models/openweathermap/forecast_daily.dart';

class FieldMapper {
  static Field openWeatherMapToEntity(ForecastDaily forecastDaily) {

    const ids = ['A','B','C'];

    for (var i = 0; i < 3; i++) {
       Field(
        id: ids[i],
        name: name,
        description: description,
        rainy: forecastDaily.pop,
      );
    }

    return Field(
        id: id,
        name: name,
        description: description,
        rainy: forecastDaily.pop,
      );
  }
}
