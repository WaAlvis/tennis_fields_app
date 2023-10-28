import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/infrastructure/mappers/local_db/mappers_local_db.dart';
import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';


class BookingMapper {
  static BookingEntity localDBToEntity(BookingLocalDB booking) {
    return BookingEntity(
      field: FieldMapper.localDBToEntity(booking),
      day: DayMapper.localDBToEntity(booking),
      userSeparator: UserMapper.localDBToEntity(booking),
    );
  }
}
