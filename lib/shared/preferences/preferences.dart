import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _pref;

  static List<String> _favorites = [];
  static bool _isDark = false;

  static Future init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static bool get isDark {
    return _pref.getBool('isDark') ?? _isDark;
  }

  static set isDark(bool value) {
    _isDark = value;
    _pref.setBool('isDark', value);
  }

  Future<void> saveFavos(List<String> favorites) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('favorites', favorites);
  }

  static set saveFavorites(List<String> favorites) {
    _favorites = favorites;
    _pref.setStringList('favorites', favorites);
  }

  static List<String> get favorites {
    return _pref.getStringList('favorites') ?? _favorites;
  }
}
