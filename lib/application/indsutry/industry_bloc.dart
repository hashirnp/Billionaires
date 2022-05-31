import 'package:bloc/bloc.dart';
import 'package:company_profit_bloc/domain/Industry/industry_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/User/Model/user_response/user_response.dart';

part 'industry_event.dart';
part 'industry_state.dart';
part 'industry_bloc.freezed.dart';

ValueNotifier<List<UserResponse>> industryNotifier = ValueNotifier([]);

@injectable
class IndustryBloc extends Bloc<IndustryEvent, IndustryState> {
  IndustryService industryService;
  IndustryBloc(this.industryService) : super(IndustryState.initial()) {
    on<IndustryEvent>((event, emit) async {
      if (state.response.isNotEmpty) {
        industryNotifier.value.addAll(state.response);
        industryNotifier.notifyListeners();
        emit(IndustryState(
          isLoading: false,
          isError: false,
          response: state.response,
        ));
      }

      industryNotifier.value.clear();
      industryNotifier.notifyListeners();

      emit(const IndustryState(
        isLoading: true,
        isError: false,
        response: <UserResponse>[],
      ));

      final _result = await industryService.getIndustryData(
          industryQuery: event.indsutryQuery);
      final _state = _result.fold((l) {
        return const IndustryState(
          isLoading: false,
          isError: true,
          response: [],
        );
      }, (r) {
        industryNotifier.value.addAll(state.response);
        industryNotifier.notifyListeners();
        return IndustryState(
          isLoading: false,
          isError: false,
          response: r,
        );
      });
      emit(_state);
    });
  }
}
