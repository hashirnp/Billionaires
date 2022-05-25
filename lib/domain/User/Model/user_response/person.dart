import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  String? name;
  String? uri;
  bool? imageExists;
  String? squareImage;

  Person({this.name, this.uri, this.imageExists, this.squareImage});

  factory Person.fromJson(Map<String, dynamic> json) {
    return _$PersonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
