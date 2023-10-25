import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tennis_fields_app/presentation/home_screen.dart';
import 'package:tennis_fields_app/presentation/providers/weather_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tennis Fields',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => WeatherProvider(),lazy: false,
          ),
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
