import 'package:flutter/material.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';

class CurrentWeather extends StatelessWidget {
  final WeatherForecastEntity weather;
  const CurrentWeather({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:  FadeInImage(
            height: size.height*0.1,
            width: size.width*0.3,
            placeholder: const  AssetImage('assets/images/loading.gif'),
            image:  const NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKA7zKdGbXSkXwlML9YzlqumzgvBe25cYVklCXmZAhHf7I_d1rwV8K-vKAnGQZzXGX0lY&usqp=CAU',

            ),
            fit: BoxFit.cover,
            
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Temp ${weather.tempCelsius}Cº',
              style: textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text('Indice UV ${weather.uvIndex}',
                overflow: TextOverflow.ellipsis, maxLines: 2),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Rain ${weather.chanceRain*100}%',
              style: textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        )
      ],
    );
  }
}
