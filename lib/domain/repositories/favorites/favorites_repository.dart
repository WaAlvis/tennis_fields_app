import 'package:tennis_fields_app/domain/entities/entities.dart';

abstract class FavoritesRepository {
  Future<List<BookingEntity>> getFavorites();
}
