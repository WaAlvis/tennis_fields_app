import 'package:tennis_fields_app/domain/entities/entities.dart';

class GroupDay {
  static Map<String, List<BookingEntity>> groupBookingsByDay(
      List<BookingEntity> bookings) {
    final Map<String, List<BookingEntity>> bookingsByDay = {};

    for (var booking in bookings) {
      final date = booking.day.date;

      if (!bookingsByDay.containsKey(date)) {
        bookingsByDay[date] = [];
      }

      bookingsByDay[date]!.add(booking);
    }

    return bookingsByDay;
  }
}
