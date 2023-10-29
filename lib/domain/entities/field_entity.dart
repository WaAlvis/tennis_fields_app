class FieldEntity {
  final String id;
  final String name;
  final String description;
  final int freeSpaces;
  final bool free;
  final String urlImg;
  

  FieldEntity( {
    required this.id,
    required this.name,
    required this.description,
    this.freeSpaces = 3,
    this.free = true,
    required this.urlImg,
  });

  
  
}
