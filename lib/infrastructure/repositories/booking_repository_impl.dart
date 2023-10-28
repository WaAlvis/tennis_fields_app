import 'package:tennis_fields_app/domain/datasources/bookings_datasource.dart';
import 'package:tennis_fields_app/domain/entities/booking_entity.dart';
import 'package:tennis_fields_app/domain/repositories/bookings_repository.dart';

class BookingRepositoryImpl extends BookingsRepository {
  final BookingsDatasource bookingsDatasource;

  BookingRepositoryImpl({
    required this.bookingsDatasource,
  });

  @override
  Future<List<BookingEntity>> getBookings() {
    return bookingsDatasource.getBookings();
  }
}
