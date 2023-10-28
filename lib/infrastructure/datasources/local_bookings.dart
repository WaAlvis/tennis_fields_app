import 'package:dio/dio.dart';
import 'package:tennis_fields_app/config/constants/environment.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/infrastructure/mappers/local_db/booking_mapper.dart';
import 'package:tennis_fields_app/infrastructure/models/local_db/booking_local_db.dart';
import 'package:tennis_fields_app/shared/data/local_bookings.dart';

import '../../domain/datasources/bookings_datasource.dart';

class LocalBookingsDatasource extends BookingsDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.openweathermap.org', queryParameters: {
    'appid': Environment.theMovieDbKey,
    'units': 'metric',
    //coordenadas Asia / Tokyo
    'lat': '35',
    'lon': '139',
  }));

  @override
  Future<List<BookingEntity>> getBookings() async {
    await Future.delayed(const Duration(seconds: 2));
    List<BookingLocalDB> bookingsDB = localBookings
        .map((booking) => BookingLocalDB.fromJson(booking))
        .toList();

    List<BookingEntity> bookings = bookingsDB
        .map((booking) => BookingMapper.localDBToEntity(booking))
        .toList();

    return bookings;
  }
}
