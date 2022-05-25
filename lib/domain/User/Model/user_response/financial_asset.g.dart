// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinancialAsset _$FinancialAssetFromJson(Map<String, dynamic> json) =>
    FinancialAsset(
      isExpanded: json['isExpanded'] as bool? ?? false,
      exchange: json['exchange'] as String?,
      ticker: json['ticker'] as String?,
      companyName: json['companyName'] as String?,
      numberOfShares: (json['numberOfShares'] as num?)?.toDouble(),
      sharePrice: (json['sharePrice'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
      exchangeRate: (json['exchangeRate'] as num?)?.toDouble(),
      interactive: json['interactive'] as bool?,
      currentPrice: (json['currentPrice'] as num?)?.toDouble(),
      exerciseOptionPrice: (json['exerciseOptionPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FinancialAssetToJson(FinancialAsset instance) =>
    <String, dynamic>{
      'exchange': instance.exchange,
      'ticker': instance.ticker,
      'companyName': instance.companyName,
      'numberOfShares': instance.numberOfShares,
      'sharePrice': instance.sharePrice,
      'currencyCode': instance.currencyCode,
      'exchangeRate': instance.exchangeRate,
      'interactive': instance.interactive,
      'currentPrice': instance.currentPrice,
      'exerciseOptionPrice': instance.exerciseOptionPrice,
      'isExpanded': instance.isExpanded,
    };
