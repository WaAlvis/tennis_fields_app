import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';
class UserMapper {
  static UserEntity localDBToEntity(BookingLocalDB booking) => UserEntity(
        name: booking.userSeparator.name,
        email: booking.userSeparator.email,
      );
}
