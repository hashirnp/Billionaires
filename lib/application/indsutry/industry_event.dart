part of 'industry_bloc.dart';

@freezed
class IndustryEvent with _$IndustryEvent {
  const factory IndustryEvent.initialEvent({
    required String indsutryQuery,
  }) = _InitialEvent;
}