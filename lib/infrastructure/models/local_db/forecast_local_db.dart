class ForecastLocalDB {
    final int tempCelsius;
    final double uvIndex;
    final double chanceRain;

    ForecastLocalDB({
        required this.tempCelsius,
        required this.uvIndex,
        required this.chanceRain,
    });

    factory ForecastLocalDB.fromJson(Map<String, dynamic> json) => ForecastLocalDB(
        tempCelsius: json["tempCelsius"],
        uvIndex: json["uvIndex"]?.toDouble(),
        chanceRain: json["chanceRain"],
    );

    Map<String, dynamic> toJson() => {
        "tempCelsius": tempCelsius,
        "uvIndex": uvIndex,
        "chanceRain": chanceRain,
    };
}