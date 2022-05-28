import 'dart:developer';

import 'package:company_profit_bloc/application/filter_bloc/filter_bloc.dart';
import 'package:company_profit_bloc/domain/Filter/filter_service.dart';
import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:company_profit_bloc/domain/core/Failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/strings.dart';

@LazySingleton(as: FilterService)
class FilterImpl extends FilterService {
  @override
  Future<Either<MainFailure, List<UserResponse>>> getFilteredData(
      {required String query}) async {
        print("Query is  "+query);
        filterNotifier.value.clear();
        filterNotifier.notifyListeners(); 
    try {
      final Response response =
          await Dio(BaseOptions()).get(filterBillionairesUrl + query);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = (response.data as List).map((e) {
          return UserResponse.fromJson(e);
        }).toList();
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
