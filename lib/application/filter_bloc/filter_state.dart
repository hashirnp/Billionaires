part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    required List<UserResponse> response,
    required bool isLoading,
  }) = _Initial;

  factory FilterState.initial() => const FilterState(
        response: [],
        isLoading: false,
      );
}
