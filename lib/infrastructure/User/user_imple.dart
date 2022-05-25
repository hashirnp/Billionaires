import 'dart:developer';

import 'package:company_profit_bloc/core/strings.dart';
import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:company_profit_bloc/domain/User/user_service.dart';
import 'package:company_profit_bloc/domain/core/Failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserService)
class UserImplemmentations extends UserService {
  @override
  Future<Either<MainFailure, List<UserResponse>>> getUserData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(kBaseUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // log(response.toString());
        final result = (response.data as List).map((e) {
          return UserResponse.fromJson(e);
        }).toList();
        // final result = UserResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log("error" + e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
