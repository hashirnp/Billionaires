import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'industry_event.dart';
part 'industry_state.dart';
part 'industry_bloc.freezed.dart';

class IndustryBloc extends Bloc<IndustryEvent, IndustryState> {
  IndustryBloc() : super(_Initial()) {
    on<IndustryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
