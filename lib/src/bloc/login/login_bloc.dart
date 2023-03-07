import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    
    on<LoginEventAdd>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(count: state.count+1));
    });


     on<LonginEventRemove>((event, emit) async {
       await Future.delayed(Duration(seconds: 1));
   
      emit(state.copyWith(count: state.count-1));
    });

    on<LonginEventLogin>((event, emit) async {
      if (event.payload.username == "Admin" &&
        event.payload.password == "1234") {
        emit(state.copyWith(isAuthened: true));
        } else {
        emit(state.copyWith(isAuthened: false));
        }  
    });

  }


}
