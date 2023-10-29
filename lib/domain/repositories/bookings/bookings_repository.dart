import 'package:tennis_fields_app/domain/entities/entities.dart';

abstract class BookingsRepository {
  Future<List<BookingEntity>> getBookings();
}
