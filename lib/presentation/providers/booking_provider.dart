import 'package:flutter/material.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/domain/repositories/bookings_repository.dart';

class BookingProvider extends ChangeNotifier {
  List<BookingEntity> bookings = [];
  bool intialLoading = true;

  final BookingsRepository bookingsRepository;

  BookingProvider({required this.bookingsRepository}) {
    getBookings();
  }

  getBookings() async {
    final newBookings = await bookingsRepository.getBookings();

    bookings.addAll(newBookings);

    intialLoading = false;

    notifyListeners();
  }
}
