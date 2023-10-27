
import 'package:tennis_fields_app/infrastructure/models/openweathermap/forecast_daily.dart';

class OpenWeatherMapResponse {
    final int lat;
    final int lon;
    final String timezone;
    final int timezoneOffset;
    final Current current;
    final List<Minutely> minutely;
    final List<Current> hourly;
    final List<ForecastDaily> daily;

    OpenWeatherMapResponse({
        required this.lat,
        required this.lon,
        required this.timezone,
        required this.timezoneOffset,
        required this.current,
        required this.minutely,
        required this.hourly,
        required this.daily,
    });

    factory OpenWeatherMapResponse.fromJson(Map<String, dynamic> json) => OpenWeatherMapResponse(
        lat: json["lat"],
        lon: json["lon"],
        timezone: json["timezone"],
        timezoneOffset: json["timezone_offset"],
        current: Current.fromJson(json["current"]),
        minutely: List<Minutely>.from(json["minutely"].map((x) => Minutely.fromJson(x))),
        hourly: List<Current>.from(json["hourly"].map((x) => Current.fromJson(x))),
        daily: List<ForecastDaily>.from(json["daily"].map((x) => ForecastDaily.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
        "timezone": timezone,
        "timezone_offset": timezoneOffset,
        "current": current.toJson(),
        "minutely": List<dynamic>.from(minutely.map((x) => x.toJson())),
        "hourly": List<dynamic>.from(hourly.map((x) => x.toJson())),
        "daily": List<dynamic>.from(daily.map((x) => x.toJson())),
    };
}

class Current {
    final int dt;
    final int? sunrise;
    final int? sunset;
    final double temp;
    final double feelsLike;
    final int pressure;
    final int humidity;
    final double dewPoint;
    final double uvi;
    final int clouds;
    final int visibility;
    final double windSpeed;
    final int windDeg;
    final double windGust;
    final List<Weather> weather;
    final double? pop;
    final Rain? rain;

    Current({
        required this.dt,
        this.sunrise,
        this.sunset,
        required this.temp,
        required this.feelsLike,
        required this.pressure,
        required this.humidity,
        required this.dewPoint,
        required this.uvi,
        required this.clouds,
        required this.visibility,
        required this.windSpeed,
        required this.windDeg,
        required this.windGust,
        required this.weather,
        this.pop,
        this.rain,
    });

    factory Current.fromJson(Map<String, dynamic> json) => Current(
        dt: json["dt"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
        dewPoint: json["dew_point"]?.toDouble(),
        uvi: json["uvi"]?.toDouble(),
        clouds: json["clouds"],
        visibility: json["visibility"],
        windSpeed: json["wind_speed"]?.toDouble(),
        windDeg: json["wind_deg"],
        windGust: json["wind_gust"]?.toDouble(),
        weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        pop: json["pop"]?.toDouble(),
        rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
    );

    Map<String, dynamic> toJson() => {
        "dt": dt,
        "sunrise": sunrise,
        "sunset": sunset,
        "temp": temp,
        "feels_like": feelsLike,
        "pressure": pressure,
        "humidity": humidity,
        "dew_point": dewPoint,
        "uvi": uvi,
        "clouds": clouds,
        "visibility": visibility,
        "wind_speed": windSpeed,
        "wind_deg": windDeg,
        "wind_gust": windGust,
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "pop": pop,
        "rain": rain?.toJson(),
    };
}

class Rain {
    final double the1H;

    Rain({
        required this.the1H,
    });

    factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        the1H: json["1h"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "1h": the1H,
    };
}

class Weather {
    final int id;
    final String main;
    final String description;
    final String icon;

    Weather({
        required this.id,
        required this.main,
        required this.description,
        required this.icon,
    });

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
    };
}



class FeelsLike {
    final double day;
    final double night;
    final double eve;
    final double morn;

    FeelsLike({
        required this.day,
        required this.night,
        required this.eve,
        required this.morn,
    });

    factory FeelsLike.fromJson(Map<String, dynamic> json) => FeelsLike(
        day: json["day"]?.toDouble(),
        night: json["night"]?.toDouble(),
        eve: json["eve"]?.toDouble(),
        morn: json["morn"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "day": day,
        "night": night,
        "eve": eve,
        "morn": morn,
    };
}

class Temp {
    final double day;
    final double min;
    final double max;
    final double night;
    final double eve;
    final double morn;

    Temp({
        required this.day,
        required this.min,
        required this.max,
        required this.night,
        required this.eve,
        required this.morn,
    });

    factory Temp.fromJson(Map<String, dynamic> json) => Temp(
        day: json["day"]?.toDouble(),
        min: json["min"]?.toDouble(),
        max: json["max"]?.toDouble(),
        night: json["night"]?.toDouble(),
        eve: json["eve"]?.toDouble(),
        morn: json["morn"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "day": day,
        "min": min,
        "max": max,
        "night": night,
        "eve": eve,
        "morn": morn,
    };
}

class Minutely {
    final int dt;
    final int precipitation;

    Minutely({
        required this.dt,
        required this.precipitation,
    });

    factory Minutely.fromJson(Map<String, dynamic> json) => Minutely(
        dt: json["dt"],
        precipitation: json["precipitation"],
    );

    Map<String, dynamic> toJson() => {
        "dt": dt,
        "precipitation": precipitation,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
