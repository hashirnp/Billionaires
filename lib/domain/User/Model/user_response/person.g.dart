// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      name: json['name'] as String?,
      uri: json['uri'] as String?,
      imageExists: json['imageExists'] as bool?,
      squareImage: json['squareImage'] as String?,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'uri': instance.uri,
      'imageExists': instance.imageExists,
      'squareImage': instance.squareImage,
    };
