import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';

class FieldMapper {
  static FieldEntity localDBToEntity(BookingLocalDB booking) {
    final field = booking.field;
    return FieldEntity(
      id: field.id,
      name: field.name,
      description: field.description,
      urlImg: field.urlImg,
    );
  }
}
