// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginEventAdd extends LoginEvent {}

class LonginEventRemove extends LoginEvent {}

class LonginEventLogin extends LoginEvent {
  final User payload;

  LonginEventLogin(
    this.payload,
  );
}
