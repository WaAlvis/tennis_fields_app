import 'package:tennis_fields_app/domain/entities/entities.dart';

abstract class FavoritesDatasource {
  Future<List<BookingEntity>> getFavorites();
}
