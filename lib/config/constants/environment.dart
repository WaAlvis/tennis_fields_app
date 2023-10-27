import 'package:flutter_dotenv/flutter_dotenv.dart';


class Environment {

  static String theMovieDbKey = dotenv.env['OPEN_WEATHER_MAP_KEY'] ?? 'a8c82eecc327549703347997f0bf285c';


}