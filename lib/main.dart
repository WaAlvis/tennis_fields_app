import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:tennis_fields_app/config/router/app_router.dart';
import 'package:tennis_fields_app/config/theme/app_theme.dart';
import 'package:tennis_fields_app/infrastructure/datasources/local_bookings.dart';
import 'package:tennis_fields_app/infrastructure/repositories/booking_repository_impl.dart';
import 'package:tennis_fields_app/presentation/providers/providers.dart';

import 'infrastructure/datasources/open_weather_map.dart';
import 'infrastructure/repositories/weather_repository_impl copy.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingsRepository =
        BookingRepositoryImpl(bookingsDatasource: LocalBookingsDatasource());
    final weathersRepository =
        WeatherRepositoryImpl(weathersDatasource: OpenweathermapDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BookingProvider(
            bookingsRepository: bookingsRepository,
          ),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => WeatherProvider(
            weathersRepository: weathersRepository,
          ),
          lazy: false,
        )
      ],
      child: MaterialApp.router(
        title: 'Tennis Fields',
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
        theme: AppTheme().getTheme(),
      ),
    );
  }
}
