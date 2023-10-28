class UserSeparatorLocalDB {
    final String name;
    final String email;

    UserSeparatorLocalDB({
        required this.name,
        required this.email,
    });

    factory UserSeparatorLocalDB.fromJson(Map<String, dynamic> json) => UserSeparatorLocalDB(
        name: json["name"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
    };
}