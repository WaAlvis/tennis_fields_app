import 'package:tennis_fields_app/infrastructure/models/openweathermap/openweathermap_response.dart';

class ForecastDaily {
    final int dt;
    final int sunrise;
    final int sunset;
    final int moonrise;
    final int moonset;
    final double moonPhase;
    final Temp temp;
    final FeelsLike feelsLike;
    final int pressure;
    final int humidity;
    final double dewPoint;
    final double windSpeed;
    final int windDeg;
    final double windGust;
    final List<Weather> weather;
    final int clouds;
    final double pop;
    final double uvi;
    final double? rain;

    ForecastDaily({
        required this.dt,
        required this.sunrise,
        required this.sunset,
        required this.moonrise,
        required this.moonset,
        required this.moonPhase,
        required this.temp,
        required this.feelsLike,
        required this.pressure,
        required this.humidity,
        required this.dewPoint,
        required this.windSpeed,
        required this.windDeg,
        required this.windGust,
        required this.weather,
        required this.clouds,
        required this.pop,
        required this.uvi,
        this.rain,
    });

    factory ForecastDaily.fromJson(Map<String, dynamic> json) => ForecastDaily(
        dt: json["dt"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        moonrise: json["moonrise"],
        moonset: json["moonset"],
        moonPhase: json["moon_phase"]?.toDouble(),
        temp: Temp.fromJson(json["temp"]),
        feelsLike: FeelsLike.fromJson(json["feels_like"]),
        pressure: json["pressure"],
        humidity: json["humidity"],
        dewPoint: json["dew_point"]?.toDouble(),
        windSpeed: json["wind_speed"]?.toDouble(),
        windDeg: json["wind_deg"],
        windGust: json["wind_gust"]?.toDouble(),
        weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        clouds: json["clouds"],
        pop: json["pop"]?.toDouble(),
        uvi: json["uvi"]?.toDouble(),
        rain: json["rain"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "dt": dt,
        "sunrise": sunrise,
        "sunset": sunset,
        "moonrise": moonrise,
        "moonset": moonset,
        "moon_phase": moonPhase,
        "temp": temp.toJson(),
        "feels_like": feelsLike.toJson(),
        "pressure": pressure,
        "humidity": humidity,
        "dew_point": dewPoint,
        "wind_speed": windSpeed,
        "wind_deg": windDeg,
        "wind_gust": windGust,
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "clouds": clouds,
        "pop": pop,
        "uvi": uvi,
        "rain": rain,
    };
}