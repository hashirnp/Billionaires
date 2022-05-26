import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';

abstract class SearchService {
  List<UserResponse> getCategory({
    required List<UserResponse>list,
    required String query
  });
}