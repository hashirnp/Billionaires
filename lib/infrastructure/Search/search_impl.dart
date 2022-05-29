import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/search/search_service.dart';

class SearchData implements SearchService {
  SearchData._internal();

  static SearchData instance = SearchData._internal();
  factory SearchData() {
    return instance;
  }

  ValueNotifier<List<UserResponse>> searchNotifier = ValueNotifier([]);

  @override
  List<UserResponse> getCategory(
      {required List<UserResponse> list, required String query}) {
    List<UserResponse> dummyList = [];

    if (query.isNotEmpty) {
      for (int i = 0; i < list.length; i++) {
        if (list[i].personName!.toLowerCase().contains(query)) {
          dummyList.add(list[i]);
        }
      }
    } else {
      dummyList = list;
    }

    return dummyList;
  }

  Future<void> refreshUI(
      {required List<UserResponse> list, required String query}) async {
    final _category = getCategory(list: list, query: query);
    searchNotifier.value.clear();

    Future.forEach(_category, (UserResponse model) {
      searchNotifier.value.add(model);
    });
    searchNotifier.notifyListeners();
  }
}
