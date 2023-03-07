import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginEventAdd>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(count: state.count+1));
    });


     on<LonginEventRemove>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(count: state.count-1));
    });
  }


}
