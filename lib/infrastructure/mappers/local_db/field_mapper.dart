import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';

class FieldMapper {
  static FieldEntity localDBToEntity(BookingLocalDB booking) => FieldEntity(
        id: booking.field.id,
        name: booking.field.name,
        description: booking.field.description,
      );
}
