import 'package:bloc/bloc.dart';
import 'package:company_profit_bloc/domain/Filter/filter_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/User/Model/user_response/user_response.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterService filterService;

  FilterBloc(this.filterService) : super(FilterState.initial()) {
    on<_InitialEvent>((event, emit) {
      emit(const FilterState(response: []));
    });

    on<FilterEvent>((event, emit) async {
      emit(const FilterState(response: []));
       final result =
          await filterService.getFilteredData( query: event.filterQuery);
    });
  }
}
