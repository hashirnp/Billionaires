import 'package:bloc/bloc.dart';
import 'package:company_profit_bloc/domain/User/Model/user_response/user_response.dart';
import 'package:company_profit_bloc/domain/User/user_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

ValueNotifier<List<UserResponse>> userNotifier = ValueNotifier([]);

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserService userService;
  UserBloc(this.userService) : super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      if (state.response.isNotEmpty) {
        // userNotifier.value.clear();
        // userNotifier.value.addAll(state.response);
        // userNotifier.notifyListeners();
        emit(UserState(
          isLoading: false,
          isError: false,
          response: state.response, 
        ));
      }

      emit(const UserState(
        isLoading: true,
        isError: false,
        response: <UserResponse>[],
      ));

      final _result = await userService.getUserData();
      final _state = _result.fold((l) {
        return const UserState(
          isLoading: false,
          isError: true,
          response: [],
        );
      }, (r) {
        userNotifier.value.clear();
        userNotifier.value.addAll(r);
        userNotifier.notifyListeners();
        return UserState(
          isLoading: false,
          isError: false,
          response: r,
        );
      });
      emit(_state);
    });
  }
}
