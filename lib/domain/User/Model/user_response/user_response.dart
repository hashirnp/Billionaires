import 'package:json_annotation/json_annotation.dart';

import 'financial_asset.dart';
import 'person.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  String? name;
  int? year;
  String? uri;
  String? bio;
  int? rank;
  String? listUri;
  double? finalWorth;
  Person? person;
  bool? visible;
  String? personName;
  String? state;
  String? city;
  String? source;
  List<String>? industries;
  String? countryOfCitizenship;
  int? timestamp;
  int? version;
  String? naturalId;
  int? position;
  bool? imageExists;
  String? gender;
  int? birthDate;
  String? lastName;
  List<FinancialAsset>? financialAssets;
  int? date;
  bool? wealthList;
  double? estWorthPrev;
  double? privateAssetsWorth;
  bool? familyList;
  bool? interactive;
  int? archivedWorth;
  String? thumbnail;
  String? squareImage;
  bool? bioSuppress;
  List<String>? csfDisplayFields;
  List<String>? bios;
  List<String>? abouts;

  UserResponse({
    this.name,
    this.year,
    this.uri,
    this.bio,
    this.rank,
    this.listUri,
    this.finalWorth,
    this.person,
    this.visible,
    this.personName,
    this.state,
    this.city,
    this.source,
    this.industries,
    this.countryOfCitizenship,
    this.timestamp,
    this.version,
    this.naturalId,
    this.position,
    this.imageExists,
    this.gender,
    this.birthDate,
    this.lastName,
    this.financialAssets,
    this.date,
    this.wealthList,
    this.estWorthPrev,
    this.privateAssetsWorth,
    this.familyList,
    this.interactive,
    this.archivedWorth,
    this.thumbnail,
    this.squareImage,
    this.bioSuppress,
    this.csfDisplayFields,
    this.bios,
    this.abouts,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return _$UserResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
