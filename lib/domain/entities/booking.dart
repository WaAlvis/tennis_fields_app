import 'package:tennis_fields_app/domain/entities/entities.dart';

class Booking {
  final Field field;
  final Day day;
  final User userSeparator;

  Booking({
    required this.field,
    required this.day,
    required this.userSeparator,
  });
}


