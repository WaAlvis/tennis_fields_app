import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tennis_fields_app/config/helpers/group_day.dart';
import 'package:tennis_fields_app/domain/entities/booking_entity.dart';
import 'package:tennis_fields_app/presentation/providers/booking_provider.dart';
import 'package:tennis_fields_app/presentation/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'home-screen';

  @override
  Widget build(BuildContext context) {
    final bookingProvider = context.watch<BookingProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ace Arena Tenis Club'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              //TODO: implementar favoritos
            },
          )
        ],
      ),
      body: bookingProvider.intialLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _BookingListView(bookingProvider.bookings),
    );
  }
}

class _BookingListView extends StatelessWidget {
  final List<BookingEntity> bookings;

  const _BookingListView(this.bookings);

  @override
  Widget build(BuildContext context) {
    final Map<String, List<BookingEntity>> bookingsByDay =
        GroupDay.groupBookingsByDay(bookings);

        

    return ListView.builder(
      itemCount: bookingsByDay.length,
      itemBuilder: (context, i) {
        final date = bookingsByDay.keys.elementAt(i);
        final dateBookings = bookingsByDay[date];


        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              child: ExpansionTile(
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _InfoIcon(
                        icon: Icons.thermostat,
                        info: '${bookings[i].day.forecast.tempCelsius.toString()} Cº'),
                        SizedBox(width: 12,),
                    
                        _InfoIcon(
                        icon: Icons.cloudy_snowing,
                        info: '${bookings[i].day.forecast.chanceRain.toString()} %'),
                  ],
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Fecha: $date',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navegar a la pantalla de destino y pasar un objeto
                      final booking = bookings[i];
                      booking.heroId =
                          'booking-${bookings[i].userSeparator.email}';

                      context.push('/detail', extra: booking);
                    },
                    child: Hero(
                      tag: bookings[i],
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: dateBookings!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                'Campo Separado: ${dateBookings[index].field.name}'),
                            subtitle: Text(
                                'Usuario: ${dateBookings[index].userSeparator.name}'),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: Colors.grey),
          ],
        );
      },
    );
  }
}

class _InfoIcon extends StatelessWidget {
  final IconData icon;
  final String info;
  const _InfoIcon({required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20,),
        Text(info),
      ],
    );
  }
}
