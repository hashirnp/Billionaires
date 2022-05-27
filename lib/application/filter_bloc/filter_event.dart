part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.initialEvent() = _InitialEvent;
   const factory FilterEvent.filterEvent({
    required String filterQuery,
  }) = FilterEvent;
}   