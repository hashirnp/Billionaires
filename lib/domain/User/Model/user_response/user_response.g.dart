// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      name: json['name'] as String?,
      year: json['year'] as int?,
      uri: json['uri'] as String?,
      bio: json['bio'] as String?,
      rank: json['rank'] as int?,
      listUri: json['listUri'] as String?,
      finalWorth: (json['finalWorth'] as num?)?.toDouble(),
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
      visible: json['visible'] as bool?,
      personName: json['personName'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      source: json['source'] as String?,
      industries: (json['industries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      countryOfCitizenship: json['countryOfCitizenship'] as String?,
      timestamp: json['timestamp'] as int?,
      version: json['version'] as int?,
      naturalId: json['naturalId'] as String?,
      position: json['position'] as int?,
      imageExists: json['imageExists'] as bool?,
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] as int?,
      lastName: json['lastName'] as String?,
      financialAssets: (json['financialAssets'] as List<dynamic>?)
          ?.map((e) => FinancialAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] as int?,
      wealthList: json['wealthList'] as bool?,
      estWorthPrev: (json['estWorthPrev'] as num?)?.toDouble(),
      privateAssetsWorth: (json['privateAssetsWorth'] as num?)?.toDouble(),
      familyList: json['familyList'] as bool?,
      interactive: json['interactive'] as bool?,
      archivedWorth: json['archivedWorth'] as int?,
      thumbnail: json['thumbnail'] as String?,
      squareImage: json['squareImage'] as String?,
      bioSuppress: json['bioSuppress'] as bool?,
      csfDisplayFields: (json['csfDisplayFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bios: (json['bios'] as List<dynamic>?)?.map((e) => e as String).toList(),
      abouts:
          (json['abouts'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'year': instance.year,
      'uri': instance.uri,
      'bio': instance.bio,
      'rank': instance.rank,
      'listUri': instance.listUri,
      'finalWorth': instance.finalWorth,
      'person': instance.person,
      'visible': instance.visible,
      'personName': instance.personName,
      'state': instance.state,
      'city': instance.city,
      'source': instance.source,
      'industries': instance.industries,
      'countryOfCitizenship': instance.countryOfCitizenship,
      'timestamp': instance.timestamp,
      'version': instance.version,
      'naturalId': instance.naturalId,
      'position': instance.position,
      'imageExists': instance.imageExists,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'lastName': instance.lastName,
      'financialAssets': instance.financialAssets,
      'date': instance.date,
      'wealthList': instance.wealthList,
      'estWorthPrev': instance.estWorthPrev,
      'privateAssetsWorth': instance.privateAssetsWorth,
      'familyList': instance.familyList,
      'interactive': instance.interactive,
      'archivedWorth': instance.archivedWorth,
      'thumbnail': instance.thumbnail,
      'squareImage': instance.squareImage,
      'bioSuppress': instance.bioSuppress,
      'csfDisplayFields': instance.csfDisplayFields,
      'bios': instance.bios,
      'abouts': instance.abouts,
    };
