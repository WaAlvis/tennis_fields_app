import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';

class DayLocalDB {
    final DateTime date;
    final ForecastLocalDB forecast;

    DayLocalDB({
        required this.date,
        required this.forecast,
    });

    factory DayLocalDB.fromJson(Map<String, dynamic> json) => DayLocalDB(
        date: DateTime.parse(json["date"]),
        forecast: ForecastLocalDB.fromJson(json["forecast"]),
    );

    Map<String, dynamic> toJson() => {
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "forecast": forecast.toJson(),
    };
}