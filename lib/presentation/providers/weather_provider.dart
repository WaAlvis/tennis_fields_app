import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherProvider extends ChangeNotifier {
  final String _apiKey ='a8c82eecc327549703347997f0bf285c';
  final String _units = 'metric';
  final String _baseUrl = 'api.openweathermap.org';
  final String _idMedellin = '3674962';

  
  WeatherProvider() {
    getForecast();
  }

  Future<String> _getJsonData(String endpoint, [String amount = '10']) async {
    final url = Uri.https(_baseUrl, endpoint,
        {'appid': _apiKey, 'units': _units, 'id':_idMedellin,'cnt': amount});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    return response.body;
  }

  getForecast() async {
    final jsonData = await _getJsonData('data/2.5/forecast');

    print(jsonData);
    // final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);

    // onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
  }
}
