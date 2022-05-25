part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required bool isError,
    required List<UserResponse> response,
  }) = _Initial;

  factory UserState.initial() => const UserState(
        isLoading: false,
        isError: false,
        response: [],
      );
}
