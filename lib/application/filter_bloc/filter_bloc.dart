import 'package:bloc/bloc.dart';
import 'package:company_profit_bloc/domain/Filter/filter_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import '../../domain/User/Model/user_response/user_response.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

ValueNotifier<List<UserResponse>> filterNotifier = ValueNotifier([]);

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterService filterService;

  FilterBloc(this.filterService) : super(FilterState.initial()) {
    on<_InitialEvent>((event, emit) {
      emit(const FilterState(response: [], isLoading: true));
    });

    on<FilterQuery>((event, emit) async {
      if (state.response.isNotEmpty) {
        emit(FilterState(response: state.response, isLoading: true));
      } else {
        emit(const FilterState(response: [], isLoading: true));
      }

      final result =
          await filterService.getFilteredData(query: event.filterQuery);
      final _state = result.fold((l) {
        return const FilterState(response: [], isLoading: false);
      }, (r) {
        filterNotifier.value.clear();
        filterNotifier.value.addAll(r);
        filterNotifier.notifyListeners();
        return FilterState(response: r, isLoading: false);
      });
      emit(_state);
    });
  }
}
