class FieldLocalDB {
    final String id;
    final String name;
    final String description;
    final int freeSpaces;
    final bool free;

    FieldLocalDB({
        required this.id,
        required this.name,
        required this.description,
        required this.freeSpaces,
        required this.free,
    });

    factory FieldLocalDB.fromJson(Map<String, dynamic> json) => FieldLocalDB(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        freeSpaces: json["freeSpaces"],
        free: json["free"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "freeSpaces": freeSpaces,
        "free": free,
    };
}