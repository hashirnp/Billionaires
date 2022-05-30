part of 'industry_bloc.dart';

@freezed
class IndustryState with _$IndustryState {
  const factory IndustryState({
    required bool isLoading,
    required bool isError,
    required List<UserResponse>response,
  }) = _Initial;

  factory IndustryState.initial()=> const IndustryState(isLoading: false, isError: false, response: []);
}
