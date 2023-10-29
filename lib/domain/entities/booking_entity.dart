import 'package:tennis_fields_app/domain/entities/entities.dart';

class BookingEntity {
  final FieldEntity field;
  final DayEntity day;
  final UserEntity userSeparator;
  

  BookingEntity({
    required this.field,
    required this.day,
    required this.userSeparator,
  });

  String? heroId;
}


