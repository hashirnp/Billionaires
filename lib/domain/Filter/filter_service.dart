import 'package:company_profit_bloc/domain/core/Failure/main_failure.dart';
import 'package:dartz/dartz.dart';

import '../User/Model/user_response/user_response.dart';

abstract class FilterService {
  Future<Either<MainFailure,List<UserResponse>>> getFilteredData({required String query});
}