class Field {
  final String id;
  final String name;
  final String description;
  final int freeSpaces;
  final double rainy;

  Field({
    required this.id,
    required this.name,
    required this.description,
    this.freeSpaces = 3,
    required this.rainy,
  });
}

