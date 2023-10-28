import 'package:tennis_fields_app/infrastructure/models/local_db/models_local_db.dart';

class BookingLocalDB {
    final FieldLocalDB field;
    final DayLocalDB day;
    final UserSeparatorLocalDB userSeparator;

    BookingLocalDB({
        required this.field,
        required this.day,
        required this.userSeparator,
    });

    factory BookingLocalDB.fromJson(Map<String, dynamic> json) => BookingLocalDB(
        field: FieldLocalDB.fromJson(json["field"]),
        day: DayLocalDB.fromJson(json["day"]),
        userSeparator: UserSeparatorLocalDB.fromJson(json["userSeparator"]),
    );

    Map<String, dynamic> toJson() => {
        "field": field.toJson(),
        "day": day.toJson(),
        "userSeparator": userSeparator.toJson(),
    };
}


