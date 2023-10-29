import 'package:flutter/material.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';

class DetailsScreen extends StatelessWidget {
  static const name = 'detail-screen';
  final BookingEntity booking;
  const DetailsScreen({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(booking.field),
        SliverList(
            delegate: SliverChildListDelegate([
          _InfoBooking(booking),
          _Overview(booking.field),
          _Overview(booking.field),
          _Overview(booking.field),
        ]))
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  final FieldEntity field;

  const _CustomAppBar(this.field);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          color: Colors.black12,
          child: Text(
            'Campo ${field.name}',
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        background: Stack(
          children: [
            Positioned.fill(
              child: FadeInImage(
                placeholder: const AssetImage('assets/images/loading.gif'),
                image: NetworkImage(field.urlImg),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 40,
              right: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoBooking extends StatelessWidget {
  final BookingEntity booking;

  const _InfoBooking(this.booking);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 40),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Hero(
            tag: booking.heroId!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/images/loading.gif'),
                image: NetworkImage(booking.field.urlImg),
                fit: BoxFit.cover,
                height: 150,
                width: size.width * 0.5,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Separada por',
                    style: textTheme.headlineSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Text(
                  booking.userSeparator.email,
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(booking.day.date,
                    overflow: TextOverflow.ellipsis, maxLines: 2),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Temp ${booking.day.forecast.tempCelsius}Cº',
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'Rain ${booking.day.forecast.chanceRain}%',
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'IndexUv ${booking.day.forecast.uvIndex}%',
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final FieldEntity field;

  const _Overview(this.field);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        field.description,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
