import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';

class DayLocalDB {
    final String date;
    final ForecastLocalDB forecast;

    DayLocalDB({
        required this.date,
        required this.forecast,
    });

    factory DayLocalDB.fromJson(Map<String, dynamic> json) => DayLocalDB(
        date: json["date"],
        forecast: ForecastLocalDB.fromJson(json["forecast"]),
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "forecast": forecast.toJson(),
    };
}