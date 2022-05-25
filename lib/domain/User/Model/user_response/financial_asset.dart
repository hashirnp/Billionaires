import 'package:json_annotation/json_annotation.dart';

part 'financial_asset.g.dart';

@JsonSerializable()
class FinancialAsset {
  String? exchange;
  String? ticker;
  String? companyName;
  double? numberOfShares;
  double? sharePrice; 
  String? currencyCode;
  double? exchangeRate;
  bool? interactive;
  double? currentPrice;
  double? exerciseOptionPrice;

  bool isExpanded;
 
  FinancialAsset({ 
    this.isExpanded=false,
    this.exchange,
    this.ticker,
    this.companyName,
    this.numberOfShares,
    this.sharePrice,
    this.currencyCode,
    this.exchangeRate,
    this.interactive,
    this.currentPrice,
    this.exerciseOptionPrice,
  }
  );

  factory FinancialAsset.fromJson(Map<String, dynamic> json) {
    return _$FinancialAssetFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FinancialAssetToJson(this);
}
