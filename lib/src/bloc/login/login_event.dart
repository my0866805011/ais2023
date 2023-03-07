part of 'login_bloc.dart';


abstract class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginEventAdd extends LoginEvent {}

class LonginEventRemove extends LoginEvent {}
