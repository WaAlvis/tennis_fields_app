import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tennis_fields_app/presentation/providers/booking_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'home-screen';

  @override
  Widget build(BuildContext context) {
    final bookingProvider = context.watch<BookingProvider>();
    return bookingProvider.intialLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            body: Center(
                child: Text(bookingProvider.bookings[0].userSeparator.email)),
          );
  }
}
