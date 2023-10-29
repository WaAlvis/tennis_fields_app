import 'package:tennis_fields_app/domain/entities/entities.dart';

abstract class BookingsDatasource {
  Future<List<BookingEntity>> getBookings();
}
