import 'package:tennis_fields_app/domain/entities/entities.dart';

class Field {
  final String id;
  final String name;
  final String description;
  final int freeSpaces;
  final bool free;
  

  Field({
    required this.id,
    required this.name,
    required this.description,
    this.freeSpaces = 3,
    this.free = true,
    
  });
}
