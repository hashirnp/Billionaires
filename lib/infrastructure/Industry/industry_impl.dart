import 'dart:developer';

import 'package:company_profit_bloc/domain/Industry/industry_service.dart';
import 'package:dartz/dartz.dart';
import 'package:company_profit_bloc/domain/core/Failure/main_failure.dart';
import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/strings.dart';

@LazySingleton(as: IndustryService)
class IndustryImplementation extends IndustryService {
  @override
  Future<Either<MainFailure, List<UserResponse>>> getIndustryData(
      {required String industryQuery}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(industryBillionairesUrl + industryQuery);

      if (response.statusCode == 200 || response.statusCode == 201) {
       //log(response.toString());
        final result = (response.data as List).map((e) {
          return UserResponse.fromJson(e);
        }).toList(); 
        return Right(result);
      } else {
        log("error :- client error" );
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
