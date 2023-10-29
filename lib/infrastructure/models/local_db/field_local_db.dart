class FieldLocalDB {
    final String id;
    final String name;
    final String description;
    final int freeSpaces;
    final bool free;
    final String urlImg;
  

    FieldLocalDB({
        required this.id,
        required this.name,
        required this.description,
        required this.freeSpaces,
        required this.free,
        required this.urlImg
        ,
    });

    factory FieldLocalDB.fromJson(Map<String, dynamic> json) => FieldLocalDB(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        freeSpaces: json["freeSpaces"],
        free: json["free"],
        urlImg: json["urlImg"]??'https://www.competize.com/blog/wp-content/uploads/2020/11/pista-tenis-arcilla-pelotas-750x563.jpg',
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "freeSpaces": freeSpaces,
        "free": free,
        "urlImg": urlImg,
    };
}